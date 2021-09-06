const express = require('express')
const app = express()

module.exports = {
    path:    '/server',
    handler: app
}

const sql_localsJoinA = `
    SELECT
        l.id AS local_id,
        l.name AS local_name,
        l.name_kana AS local_name_kana,
        a.id AS area_id,
        a.name AS area_name,
        a.name_kana AS area_name_kana
    FROM
        locals AS l
        JOIN areas AS a ON l.id = a.local_id
    WHERE l.name_kana NOT IN ('その他')
`
const sql_destiladorsJoinABLS = `
    SELECT DISTINCT
        d.name_kana AS dest_name,
        d.nom AS nom,
        b.name_kana AS brand_name,
        s.name_kana AS state_name,
        l.name_kana AS local_name,
        a.name_kana AS area_name
    FROM
        destiladors AS d
        JOIN brands AS b ON d.main_brand = b.id
        JOIN areas AS a ON d.area_id = a.id
        JOIN locals AS l ON a.local_id = l.id
        JOIN states AS s ON a.state_id = s.id
`
const  sql_selectAll = (table) => {
    return `SELECT * FROM ${table}`
}

const  sql_selectColumun = (table, columnsArray) => {
    let columns = ''
    for (let i = 0; i < columnsArray.length; i++) {
        if (columnsArray.length - 1 === i) {
            columns += columnsArray[i]
        } else {
            columns += columnsArray[i] + ','
        }
    }
    return `SELECT DISTINCT ${columns} FROM ${table}`
}

const  sql_selectProductCategory = (category_id, id) => {
    const column_name = (
        category_id === 'brands' ? 'brand_id'
        :
        category_id === 'destiladors' ? 'dest_nom'
        :
        category_id === 'agings' ? 'aging_sort'
        :
        ''
    )
    return `SELECT * FROM syouhin WHERE ${column_name} = '${id}'`
}

const connectMysql = async (sql, res) => {
    const mysql = require('mysql')
    const connection = mysql.createConnection({
        host: process.env.DB_HOST,
        user: process.env.DB_USER,
        database: process.env.DB_NAME,
        password: process.env.DB_PASS
    })
    await connection.connect()
    await connection.query(sql, function(error, rows, fields) {
        if (error) {
            console.log(error);
        }
        res.send( rows )
    })
    await connection.end(function(err) {
        console.log(err)
    })
}

app.get('/get/:table/:category/:id', (req, res) => {
    const syouhinColumns = (
        req.params.category === 'brands' ? ['name', 'id']
        :
        req.params.category === 'destiladors' ? ['name_kana', 'nom']
        :
        req.params.category === 'agings' ? ['name_kana', 'id']
        : ''
    )

    const sqlPartern = [
        {
            'table': 'locals',
            'id': [
                { 'key': 'all', 'sql': sql_selectAll('locals') },
                { 'key': 'joinA', 'sql': sql_localsJoinA},
            ]
        },
        {
            'table': 'syouhin',
            'id': [
                { 'key': req.params.id, 'sql': req.params.id === 'all' ? sql_selectColumun(req.params.category, syouhinColumns) : sql_selectProductCategory(req.params.category, req.params.id) },
            ]
        },
        {
            'table': 'agings',
            'id': [
                { 'key': 'all', 'sql': sql_selectAll('agings') },
            ]
        },
        {
            'table': 'destiladors',
            'id': [
                { 'key': 'all', 'sql': sql_selectAll('destiladors') },
                { 'key': 'joinABLS', 'sql': sql_destiladorsJoinABLS},
            ]
        },
    ]

    sqlPartern.map((table) => {
        if(req.params.table === table.table) {
            table.id.map((id) => {
                if(req.params.id === id.key) {
                    connectMysql(id.sql, res)
                }
            })
        }
    })
})