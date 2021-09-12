<template>
    <v-row justify="center" align="start">

         <!-- Section Title -->
            <v-col
                v-for="(secData, secIdx) in categories"
                v-if="secData.id === $route.params.category"
                :key="'secData' + secIdx"
                cols="12"
            >
                <v-card color="rgba(0, 0, 0, 0)" elevation="0">

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

                     <v-breadcrumbs
                        :items="breadcrumbs"
                        divider="/"
                    />

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
import { menuLinks } from '~/assets/data/globals.json'

export default {
    data () {
        return {
            categories: category,
            categoryIdx: Number(),
            pageIdx: Number(),
            mainContents: mainContents,
            breadcrumbs: [],
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

        // Get Page Index
        menuLinks.map((pageInfo, idx) => {
            if(pageInfo.to === '/products') this.pageIdx = idx
        })

        // Get Category Index
        category.map((categoryInfo, idx) => {
            if(categoryInfo.id === this.$route.params.category) this.categoryIdx = idx
        })

        // Get Request Data
        const requests = [
            // Request for Main Contents & Side Menu & Section Category & Breadcrumbs
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
                        // Set Sub Menu
                        this.setSubMenuData(response)
                        this.$nuxt.$emit('getSubMenuItems', this.subMenuItems)
                    break
                    default:
                        // Set Main Contents & Side Menu & Section Category
                        this.setProductsData(response)
                        this.$nuxt.$emit('getSideMenuItems', this.sideMenuItems)
                        // Set Breadcrumbs
                        this.setBreadcrumbs(response)
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
                    id: `${data.brand_id}_${data.aging_id}`,
                    title: `${data.brand_name} / ${data.aging_name}`,
                    to: `${menuLinks[this.pageIdx].to}/${this.$route.params.category}/${this.$route.params.id}#${data.brand_id}_${data.aging_id}`,
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
                    url: data.syouhin_url,
                }
                this.mainContents.push(insertData)
                this.sideMenuItems.push(insertData)
            })

            // Set Section Category
            let insertData = {}
            switch (this.$route.params.category) {
                case 'brands':
                    insertData = { title: response[0].brand_name }
                break
                case 'destiladors':
                    insertData = { title: `NOM ${response[0].dest_nom} ${response[0].dest_name_kana}` }
                break
                case 'agings':
                    insertData = { title: this.getAgingName(response[0].aging_sort) }
                break
            }
            this.categories = [
                Object.assign({
                    id: this.$route.params.category,
                    icon: category[this.categoryIdx].icon,
                    color: category[this.categoryIdx].color,
                    note: '右上のサイドメニューからページ内ジャンプ、左上サブメニューから他のページにリンクできます。'
                }, insertData)
            ]
        },

        // Set Response Data for Sub Menu
        setSubMenuData(response) {
            this.subMenuItems = []
            response.map(data => {
                let insertData = {}
                switch (this.$route.params.category) {
                    case 'brands':
                        insertData = {
                            title: data.name,
                            to: `${menuLinks[this.pageIdx].to}/${this.$route.params.category}/${data.id}`,
                        }
                    break
                    case 'destiladors':
                        insertData = {
                            title: `NOM ${data.nom} ${data.name_kana}`,
                            to: `${menuLinks[this.pageIdx].to}/${this.$route.params.category}/${data.nom}`,
                        }
                    break
                    case 'agings':
                        insertData = {
                            title: data.name_kana,
                            to: `${menuLinks[this.pageIdx].to}/${this.$route.params.category}/${data.id}`,
                        }
                    break
                }
                const subMenuItem = Object.assign({
                    icon: category[this.categoryIdx].icon,
                    color: category[this.categoryIdx].color,
                }, insertData)
                this.subMenuItems.push(subMenuItem)
            })
        },

        // Set Breadcrumbs
        setBreadcrumbs(response) {
            const pageName = response.map(data => {
                switch (this.$route.params.category) {
                    case 'brands':
                        return data.brand_id === this.$route.params.id ? data.brand_name : ''
                    break
                    case 'destiladors':
                        return data.dest_nom === this.$route.params.id ? `NOM ${data.dest_nom} ${data.dest_name_kana}` : ''
                    break
                    case 'agings':
                        return data.aging_sort === this.$route.params.id ? this.getAgingName(data.aging_sort) : '';
                    break
                }
            })
            category.map(data => {
                const insertData = {
                    text: `${data.title} 商品一覧${data.id === this.$route.params.category ? `　＞　${pageName[0]}` : ''}`,
                    disabled: data.id === this.$route.params.category ? true : false,
                    href: `${menuLinks[this.pageIdx].to}/${data.id}/`,
                }
                this.breadcrumbs.push(insertData)
            })
        },

        // Get Aging Name
        getAgingName(agingsSort) {
            let agingName = String()
            switch (agingsSort) {
                case 'blanco': agingName = 'ブランコ'; break
                case 'gold': agingName = 'ゴールド'; break
                case 'reposado': agingName = 'レポサド'; break
                case 'anejo': agingName = 'アネホ'; break
                case 'extraanejo': agingName = 'エクストラアネホ'; break
                case 'joven': agingName = 'ホベン'; break
                case 'others': agingName = 'その他'; break
                case 'cocktail': agingName = 'カクテル'; break
                case 'mezcal': agingName = 'メスカル'; break
            }
            return agingName
        }
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
