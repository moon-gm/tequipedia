import { Request, Response } from "express"

const express = require('express')
const app = express()

module.exports = {
    path:    '/api',
    handler: app
}

type RequestSQL = {
    tableName: string,
    target: {
        key: string,
        sql: string
    }[]
}[]

const categoryIds = {
    brands: 'brands',
    destiladors: 'destiladors',
    agings: 'agings',
    areas: 'areas',
}

const tableNames = Object.assign(categoryIds,{
    locals: 'locals',
    syouhin: 'syouhin',
})

const SQL = {
    localsJoinAreas: `
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
    `,
    destiladorsJoinSomeTables: `
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
}
const SQLFunction: Record<string, Function> = {
    selectAll: (tableName: string): string => {
        return `SELECT * FROM ${tableName}`
    },
    selectColumun: (
        tableName: string,
        columnNames: string[]
    ): string => {
        const targetColumns = columnNames.join(',')
        return `SELECT DISTINCT ${targetColumns} FROM ${tableName}`
    },
    selectProductCategory: (
        categoryId: string,
        targetValue: string
    ): string => {
        const columnName: string = (
            categoryId === categoryIds.brands ? 'brand_id'
            :
            categoryId === categoryIds.destiladors ? 'dest_nom'
            :
            categoryId === categoryIds.agings ? 'aging_sort'
            :
            categoryId === categoryIds.areas ? 'area_id'
            :
            ''
        )
        return `SELECT * FROM syouhin WHERE ${columnName} = '${targetValue}'`
    },
}

const connectMysql = async (sql: string, res: Response): Promise<void> => {
    const mysql = require('mysql')
    const connection = mysql.createConnection({
        host: process.env.DB_HOST,
        user: process.env.DB_USER,
        database: process.env.DB_NAME,
        password: process.env.DB_PASS
    })
    await connection.connect()
    await connection.query(sql, (error: Error, rows: any) => {
        if (error) throw error
        res.send(rows)
    })
    await connection.end((error: Error) => {
        if (error) throw error
    })
}

app.get('/get/:table/:category/:id', (req: Request, res: Response) => {
    const syouhinColumns: string[] = (
        req.params.category === categoryIds.brands ? ['name', 'id']
        :
        req.params.category === categoryIds.destiladors ? ['name_kana', 'nom']
        :
        req.params.category === categoryIds.agings ? ['name_kana', 'id', 'description']
        :
        req.params.category === categoryIds.areas ? ['name_kana', 'id', 'local_id']
        : []
    )

    const requestSQL: RequestSQL = [
        {
            tableName: tableNames.locals,
            target: [
                {
                    key: 'all',
                    sql: SQLFunction.selectAll(tableNames.locals)
                },
                {
                    key: 'joinA',
                    sql: SQL.localsJoinAreas
                },
            ]
        },
        {
            tableName: tableNames.syouhin,
            target: [
                {
                    key: req.params.id,
                    sql: req.params.id === 'all' ? SQLFunction.selectColumun(req.params.category, syouhinColumns) : SQLFunction.selectProductCategory(req.params.category, req.params.id)
                },
            ]
        },
        {
            tableName: tableNames.agings,
            target: [
                {
                    key: 'all',
                    sql: SQLFunction.selectAll(tableNames.agings)
                },
            ]
        },
        {
            tableName: tableNames.destiladors,
            target: [
                {
                    key: 'all',
                    sql: SQLFunction.selectAll(tableNames.destiladors)
                },
                {
                    key: 'joinABLS',
                    sql: SQL.destiladorsJoinSomeTables
                },
            ]
        },
    ]

    for (const table of requestSQL) {
        if(req.params.table === table.tableName) {
            for ( const target of table.target) {
                if(req.params.id === target.key) {
                    connectMysql(target.sql, res)
                }
            }
        }
    }
})