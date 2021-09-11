<template>
    <v-row justify="center" align="start">

         <!-- Section Title -->
            <v-col
                v-for="(secData, secIdx) in categories"
                v-if="secData.id === $route.params.category"
                :key="'secData' + secIdx"
                cols="12"
            >
                <v-card>

                    <v-card-title class="headline">
                        <v-icon
                            left
                            :color="secData.color"
                        >
                            {{ secData.icon }}
                        </v-icon>
                        {{ secData.title }} 一覧
                    </v-card-title>

                    <v-divider/>

                    <v-card-text>
                        {{ secData.note ?  secData.note : '左上のサブメニューから選択して下さい。'}}
                    </v-card-text>

                </v-card>
            </v-col>
        <!-- Section Title -->

        <!-- Section Area -->
            <v-col
                v-if="$route.params.id"
                v-for="(secData, secIdx) in mainContents"
                :key="secData + secIdx"
                cols="12"
            >

                <!-- Space for Header Height -->
                    <v-spacer
                        :id="secData.id"
                        :style="`margin-bottom: ${headerHeight}px;`"
                    />
                <!-- Space for Header Height -->

                <!-- Sub Section Area -->
                    <v-card :class="secData.length !== secIdx && 'sub-section'">                    

                        <!-- Sub Section Title -->
                            <v-card-title class="title">
                                {{ secData.title }}
                            </v-card-title>
                        <!-- Sub Section Title -->

                        <v-divider/>

                        <!-- Sub Section Contents -->
                            <v-card-text>

                                <!-- Products Box -->
                                    <v-row
                                        justify="space-around"
                                        align="center"
                                    >

                                        <!-- Image Box -->
                                            <v-col
                                                v-if="secData.image"
                                                v-for="(image, imageIdx) in secData.image"
                                                :key="image.alt"
                                                cols="auto"
                                            >
                                                <v-img
                                                    :src="image.src"
                                                    :alt="'image' + imageIdx"
                                                    max-height="auto"
                                                    max-width="300px"
                                                    class="image-style"
                                                />
                                            </v-col>
                                        <!-- Image Box -->

                                        <!-- Data Box -->
                                            <v-col
                                                v-if="secData.list"
                                                cols="auto"
                                            >
                                                <v-card-title>Product Data</v-card-title>
                                                <v-divider/>
                                                <ul class="list-style">
                                                    <li
                                                        v-for="(list, listIdx) in secData.list"
                                                        :key="'list' + listIdx"
                                                    >
                                                        <v-icon color="green">mdi-alpha-w</v-icon>
                                                        {{ list }}
                                                    </li>
                                                </ul>
                                                <v-btn
                                                    absolute right top
                                                    target="_blank"
                                                    :href="secData.url"
                                                    color="blue darken-2"
                                                >
                                                    商品購入
                                                </v-btn>
                                            </v-col>
                                        <!-- Data Box -->

                                    </v-row>
                                <!-- Products Box -->

                            </v-card-text>
                        <!-- Sub Section Contents -->

                    </v-card>
                <!-- Sub Section Area -->

            </v-col>
        <!-- Section Area -->

    </v-row>
</template>

<script>
import { category, mainContents } from '~/assets/data/products.json'

export default {
    data () {
        return {
            categories: category,
            mainContents: mainContents,
            pageMenuItems: category,
            subMenuItems: [],
            sideMenuItems: mainContents,
            headerHeight: 0,
        }
    },

    mounted () {
        // Get Header Height & Scroll
        this.headerHeight = document.getElementsByClassName('getHeader')[0].clientHeight

        // Set Page Menu
        this.$nuxt.$emit('getPageMenuItems', this.pageMenuItems)

        // Get Request Data
        const requests = [
            // Request for Main Contents & Side Menu
            { path: `/syouhin/${this.$route.params.category}/${this.$route.params.id}` },
            // Request for Sub Menu
            { path: `/syouhin/${this.$route.params.category}/all` },
        ]
        requests.map(req => !req.path.match(/undefined/) && this.getData(req))
            
    },

    methods: {

        // Get Request Data
        async getData(req) {
            const reqPath = `/server/get${req.path}`
            await this.$axios.$get(reqPath)
            .then(response => {
                console.log({'Path': reqPath, 'Response': response})

                switch (req.path) {
                    case `/syouhin/${this.$route.params.category}/all`:
                        this.setSubMenuData(response)
                        // Sub Menu Setting
                        this.$nuxt.$emit('getSubMenuItems', this.subMenuItems)
                    break
                    default:
                        this.setProductsData(response)
                        // Side Menu Setting
                        this.$nuxt.$emit('getSideMenuItems', this.sideMenuItems)
                    break
                }

            })
            .catch(error => console.log('ERROR', error))
        },

        // Set Response Data for MainContents & Side Menu
        setProductsData(response) {

            // Set MainContents & Side Menu
            this.mainContents = []
            this.sideMenuItems = []
            response.map(data => {
                const insertData = {
                    id: data.aging_id,
                    title: `${data.brand_name} / ${data.aging_name}`,
                    to: `/products/${this.$route.params.category}/${this.$route.params.id}#${data.aging_id}`,
                    image: [
                        {
                            src: `/images/products/${data.image}`,
                            alt: data.syouhin_id,
                        }
                    ],
                    list: [
                        `アルコール　＿＿＿＿　${data.alc_degree}`,
                        `アガベ使用　＿＿＿＿　${data.mix_degree === 'Mixed' ? 'ミクスト（51%以上）' : data.mix_degree === 'Liquor' ? 'リキュール（51%未満 / 添加物1%以上）' : data.mix_degree}`,
                        `蒸留所名称　＿＿＿＿　${data.dest_name_kana}`,
                        `蒸留所番号　＿＿＿＿　NOM ${data.dest_nom}`,
                        `参考価格帯　＿＿＿＿　${data.min_price}円 ～`,
                        `生産州地域　＿＿＿＿　${data.local_name_kana} ${data.area_name_kana}`,
                        `商品の情報　＿＿＿＿　${data.information}`,
                        `薫香・風味　＿＿＿＿　${data.review_flavor}`,
                        `トップ・味　＿＿＿＿　${data.review_top}`,
                        `余韻・後味　＿＿＿＿　${data.review_after}`,
                    ],
                    url: data.syouhin_url
                }
                this.mainContents.push(insertData)
                this.sideMenuItems.push(insertData)
            })

            // Set Section Category
            let categoryIdx = Number()
            const noteMessage = '右上のサイドメニューからページ内ジャンプ、左上サブメニューから他のページにリンクできます。'
            switch (this.$route.params.category) {
                case 'brands':
                    categoryIdx = 0
                    this.categories = [
                        {
                            id: this.$route.params.category,
                            title: response[0].brand_name,
                            icon: category[categoryIdx].icon,
                            color: category[categoryIdx].color,
                            note: noteMessage
                        }
                    ]
                break
                case 'destiladors':
                    categoryIdx = 1
                    this.categories = [
                        {
                            id: this.$route.params.category,
                            title: `NOM ${response[0].dest_nom} ${response[0].dest_name_kana}`,
                            icon: category[categoryIdx].icon,
                            color: category[categoryIdx].color,
                            note: noteMessage
                        }
                    ]
                break
                case 'agings':
                    categoryIdx = 3
                    let agingsSort = String()
                    switch (response[0].aging_sort) {
                        case 'blanco': agingsSort = 'ブランコ'; break
                        case 'gold': agingsSort = 'ゴールド'; break
                        case 'reposado': agingsSort = 'レポサド'; break
                        case 'anejo': agingsSort = 'アネホ'; break
                        case 'extraanejo': agingsSort = 'エクストラアネホ'; break
                        case 'joven': agingsSort = 'ホベン'; break
                        case 'others': agingsSort = 'その他'; break
                        case 'cocktail': agingsSort = 'カクテル'; break
                        case 'mezcal': agingsSort = 'メスカル'; break
                    }
                    this.categories = [
                        {
                            id: this.$route.params.category,
                            title: agingsSort,
                            icon: category[categoryIdx].icon,
                            color: category[categoryIdx].color,
                            note: noteMessage
                        }
                    ]
                break
            }
        },

        // Set Response Data for Sub Menu
        setSubMenuData(response) {
            this.subMenuItems = []
            response.map(data => {
                let insertData = {}
                let categoryIdx = Number()
                switch (this.$route.params.category) {
                    case 'brands':
                        categoryIdx = 0
                        insertData = {
                            title: data.name,
                            to: `/products/${this.$route.params.category}/${data.id}`,
                            icon: category[categoryIdx].icon ,
                            color: category[categoryIdx].color
                        }
                    break
                    case 'destiladors':
                        categoryIdx = 1
                        insertData = {
                            title: `NOM ${data.nom}`,
                            to: `/products/${this.$route.params.category}/${data.nom}`,
                            icon: category[categoryIdx].icon ,
                            color: category[categoryIdx].color
                        }
                    break
                    case 'agings':
                        categoryIdx = 3
                        insertData = {
                            title: data.name_kana,
                            to: `/products/${this.$route.params.category}/${data.id}`,
                            icon: category[categoryIdx].icon ,
                            color: category[categoryIdx].color
                        }
                    break
                }
                this.subMenuItems.push(insertData)
            })
        },
    } 
}
</script>

<style lang="scss" scoped>
    .list-style {
        padding: 20px;
        list-style-type: none;
    }
    .paragraph-style {
        padding-left: 1em;
        padding-bottom: 20px;
    }
    .image-style {
        border-radius: 8px;
    }
</style>
