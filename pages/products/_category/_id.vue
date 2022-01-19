<template>
    <v-row justify="center" align="start">

         <!-- Section Title -->
        <div
            v-for="(secData, secIdx) in categories"
            :key="'secData' + secIdx"
            style="width: 100%"
        >
            <v-col
                v-if="secData.id === $route.params.category"
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
                        <v-alert
                            color="grey darken-3"
                            border="left"
                            type="info"
                            dismissible
                        >
                            {{ secData.note1 ?  secData.note1 : 'Click a Sub Menu list in your right'}}<br>
                            {{ secData.note2 ?  secData.note2 : ''}}
                        </v-alert>
                    </v-card-text>

                </v-card>
            </v-col>
        </div>
        <!-- Section Title -->

        <!-- Section Area -->
        <div
            v-for="(secData, secIdx) in mainContents"
            :key="secData + secIdx"
            style="width: 100%"
        >
            <v-col
                v-if="$route.params.id"
                cols="12"
            >

                <!-- Space for Header Height -->
                    <v-spacer
                        v-if="secIdx !== 0"
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
                                            <div v-if="secData.image">
                                                <v-col
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
                                            </div>
                                        <!-- Image Box -->

                                        <!-- Data Box -->
                                            <v-col
                                                v-if="secData.list"
                                                cols="auto"
                                            >
                                                <v-card-title>
                                                    Product Data
                                                    <v-btn
                                                        absolute right
                                                        target="_blank"
                                                        :href="secData.url"
                                                        color="blue darken-2"
                                                    >
                                                        商品購入
                                                    </v-btn>
                                                </v-card-title>
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
                                            </v-col>
                                        <!-- Data Box -->

                                    </v-row>
                                <!-- Products Box -->

                            </v-card-text>
                        <!-- Sub Section Contents -->

                    </v-card>
                <!-- Sub Section Area -->

            </v-col>
        </div>
        <!-- Section Area -->

    </v-row>
</template>

<script lang="ts">
import { category, mainContents } from '~/assets/data/products.json'
import { menuLinks } from '~/assets/data/globals.json'
import { getPageIndex } from '~/components/common-methods'
import { PageMenuList, SubMenuList, CategoryMenuList } from '~/assets/types/types'

type ProductsCategory = {
    id: string,
    title: string,
    color: string,
    icon: string,
    description: string,
    to: string
}

type ProductData = {
    id: string,
    title: string,
    image: {
        src: string,
        alt: string,
    }[],
    list: string[],
    url: string,
}

type BreadcrumbsData = {
    text: string,
    disabled: boolean,
    href: string,
}

const getCategoryIndex = (categoryName: string): number => {
    let categoryIndex: number
    for (const [categoryInfoIndex, categoryInfo] of category.entries()) {
        if(categoryInfo.id === categoryName) categoryIndex = categoryInfoIndex
    }
    return categoryIndex
}

export default {
    data () {
        return {
            categories: category as ProductsCategory[],
            categoryIdx: getCategoryIndex(this.$route.params.category) as number,
            pageIdx: getPageIndex('/products') as number,
            mainContents: mainContents as ProductData[],
            breadcrumbs: [],
            categoryMenuLists: category as CategoryMenuList[],
            subMenuLists: [] as SubMenuList[],
            pageMenuLists: mainContents as PageMenuList[],
            headerHeight: 0,
        }
    },

    async mounted () {
        // Get Header Height & Scroll
        this.headerHeight = document.getElementsByClassName('getHeader')[0].clientHeight

        // Set Category Menu
        this.$nuxt.$emit('getCategoryMenuLists', this.categoryMenuLists)

        // Get Request Data
        const requests = [
            // Request for Main Contents & Page Menu & Section Category & Breadcrumbs
            `/syouhin/${this.$route.params.category}/${this.$route.params.id}`,
            // Request for Sub Menu
            `/syouhin/${this.$route.params.category}/all`,
        ]
        for (const requestPath of requests) {
            if(!requestPath.match(/undefined/)) {
                await this.getData(requestPath)
            }
        }
            
    },

    methods: {

        // Get Request Data
        async getData(pathName: string): Promise<void> {
            const reqPath = `/api/get${pathName}`
            await this.$axios.$get(reqPath)
            .then(response => {

                switch (pathName) {
                    case `/syouhin/${this.$route.params.category}/all`:
                        // Set Sub Menu
                        this.setSubMenuData(response)
                        this.$nuxt.$emit('getSubMenuLists', this.subMenuLists)
                    break
                    default:
                        // Set Main Contents & Page Menu & Section Category
                        this.setProductsData(response)
                        this.$nuxt.$emit('getPageMenuLists', this.pageMenuLists)
                        // Set Breadcrumbs
                        this.setBreadcrumbs(response)
                    break
                }

            })
            .catch(error => {
                if (error) throw error
            })
        },

        // Set Response Data for MainContents & Page Menu
        setProductsData(dataSet: unknown): void {

            // Set MainContents & Page Menu
            this.mainContents = []
            this.pageMenuLists = []
            for (const data of dataSet) {

                // Set MainContents
                const productData: ProductData = {
                    id: `${data.brand_id}_${data.aging_id}`,
                    title: `${data.brand_name} / ${data.aging_name}`,
                    image: [
                        {
                            src: `/images/products/${data.image}`,
                            alt: data.syouhin_id,
                        }
                    ],
                    list: [
                        `アルコール ＿ ${data.alc_degree}`,
                        `アガベ使用 ＿ ${data.mix_degree === 'Mixed' ? 'ミクスト（51%以上）' : data.mix_degree === 'Liquor' ? 'リキュール（51%未満 / 添加物1%以上）' : data.mix_degree}`,
                        `蒸留所名称 ＿ ${data.dest_name_kana}`,
                        `蒸留所番号 ＿ NOM ${data.dest_nom}`,
                        `参考価格帯 ＿ ${data.min_price}円 ～`,
                        `生産州地域 ＿ ${data.local_name_kana} ${data.area_name_kana}`,
                        `商品の情報 ＿ ${data.information}`,
                        `薫香・風味 ＿ ${data.review_flavor}`,
                        `トップ・味 ＿ ${data.review_top}`,
                        `余韻・後味 ＿ ${data.review_after}`,
                    ],
                    url: data.syouhin_url,
                }
                this.mainContents.push(productData)

                // Set Page Menu
                const pageMenuList: PageMenuList = {
                    title: data.brand_name,
                    subtitle: data.aging_name,
                    to: `${menuLinks[this.pageIdx].to}/${this.$route.params.category}/${this.$route.params.id}#${data.brand_id}_${data.aging_id}`,
                }
                this.pageMenuLists.push(pageMenuList)
            }

            // Set Section Category
            let insertData = {}
            switch (this.$route.params.category) {
                case 'brands':
                    insertData = { title: dataSet[0].brand_name }
                break
                case 'destiladors':
                    insertData = { title: `NOM ${dataSet[0].dest_nom} ${dataSet[0].dest_name_kana}` }
                break
                case 'agings':
                    insertData = { title: this.getAgingName(dataSet[0].aging_sort) }
                break
                case 'areas':
                    insertData = { title: `${dataSet[0].local_name_kana} ${dataSet[0].area_name_kana}` }
                break
            }
            this.categories = [
                Object.assign({
                    id: this.$route.params.category,
                    icon: category[this.categoryIdx].icon,
                    color: category[this.categoryIdx].color,
                    note1: 'Click a Page Menu list in your right and Jump to in this page.',
                    note2: 'Click a Sub Menu list in your right and Link to in this Category.',
                }, insertData)
            ]
        },

        // Set Response Data for Sub Menu
        setSubMenuData(dataSet: unknown):void {
            this.subMenuLists = []
            for (const data of dataSet) {
                let insertData = {}
                let localName = String()
                switch (this.$route.params.category) {
                    case 'brands':
                        insertData = {
                            title: data.name,
                            to: `${menuLinks[this.pageIdx].to}/${this.$route.params.category}/${data.id}`,
                        }
                    break
                    case 'destiladors':
                        insertData = {
                            title: `NOM ${data.nom}`,
                            subtitle: `${data.name_kana}`,
                            to: `${menuLinks[this.pageIdx].to}/${this.$route.params.category}/${data.nom}`,
                        }
                    break
                    case 'agings':
                        insertData = {
                            title: data.name_kana,
                            subtitle: data.description,
                            to: `${menuLinks[this.pageIdx].to}/${this.$route.params.category}/${data.id}`,
                        }
                    break
                    case 'areas':
                        switch (data.local_id) {
                            case 'valles': localName = 'バジェス / ハリスコ'; break
                            case 'altos': localName = 'ロスアルトス / ハリスコ'; break
                            case 'centro': localName = 'ソナ・セントロ / ハリスコ'; break
                            case 'others': localName = 'ハリスコ州外'; break
                        }
                        insertData = {
                            title: `${data.name_kana}`,
                            subtitle: `@${localName}`,
                            to: `${menuLinks[this.pageIdx].to}/${this.$route.params.category}/${data.id}`,
                        }
                    break
                }
                const subMenuList: SubMenuList = Object.assign({
                    icon: category[this.categoryIdx].icon,
                    color: category[this.categoryIdx].color,
                }, insertData)
                this.subMenuLists.push(subMenuList)
            }
        },

        // Set Breadcrumbs
        setBreadcrumbs(dataSet: unknown): void {
            const pageName: string = dataSet.map(data => {
                let rtn
                switch (this.$route.params.category) {
                    case 'brands':
                        rtn = data.brand_id === this.$route.params.id ? data.brand_name : ''
                    break
                    case 'destiladors':
                        rtn = data.dest_nom === this.$route.params.id ? `NOM ${data.dest_nom} ${data.dest_name_kana}` : ''
                    break
                    case 'agings':
                        rtn = data.aging_sort === this.$route.params.id ? this.getAgingName(data.aging_sort) : '';
                    break
                    case 'areas':
                        rtn = data.area_id === this.$route.params.id ? `${data.local_name_kana} ${data.area_name_kana}` : '';
                    break
                }
                return rtn
            })
            let currentData: BreadcrumbsData = {}
            for (const [idx, data] of category.entries()) {
                const insertData: BreadcrumbsData = {
                    text: `${data.title} 一覧${data.id === this.$route.params.category ? ` > ${pageName[0]}` : ''}`,
                    disabled: data.id === this.$route.params.category,
                    href: data.to,
                }
                if (this.categoryIdx === idx) {
                    currentData = insertData
                } else {
                    this.breadcrumbs.push(insertData)
                }
                category.length === idx + 1 && this.breadcrumbs.push(currentData)
            }
        },

        // Get Aging Name
        getAgingName(agingsSort: string): string {
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
        li {
            padding-left: 10em;
            text-indent: -10em;
        }
    }
    .paragraph-style {
        padding-left: 1em;
        padding-bottom: 20px;
    }
    .image-style {
        border-radius: 8px;
    }
</style>
