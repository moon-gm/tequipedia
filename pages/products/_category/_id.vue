<template>
    <v-row justify="center" align="start">

         <!-- Section Title -->
            <v-col
                v-for="(sectionData, secIndex) in categories"
                v-if="sectionData.id === $route.params.category"
                :key="'sectionData' + secIndex"
                cols="12"
            >
                <v-card>
                    <v-card-title class="headline">
                        <v-icon left>{{ sectionData.icon }}</v-icon>
                        {{ sectionData.title }}一覧
                    </v-card-title>
                    <v-card-text>
                        {{ sectionData.note ?  sectionData.note : '左上のサブメニューからブランドを選択して下さい。'}}
                    </v-card-text>
                </v-card>
            </v-col>
        <!-- Section Title -->

        <!-- Section Area -->
            <v-col
                v-if="$route.params.id"
                v-for="(sectionData, secIndex) in mainContents"
                :key="sectionData + secIndex"
                cols="12"
            >
                <!-- Space for Header Height -->
                    <v-spacer
                        :id="sectionData.id"
                        :style="`margin-bottom: ${headerHeight}px;`"
                    />
                <!-- Space for Header Height -->

                <!-- Sub Section Area -->
                    <v-card :class="sectionData.length !== secIndex && 'sub-section'">                    

                        <!-- Sub Section Title -->
                            <v-card-title class="title">
                                {{ sectionData.title }}
                            </v-card-title>
                        <!-- Sub Section Title -->

                        <!-- Sub Section Contents -->
                            <v-card-text>

                                <!-- Products Box -->
                                    <v-row
                                        justify="space-around"
                                        align="center"
                                    >
                                        <v-col
                                            v-if="sectionData.image"
                                            v-for="(image, imageIndex) in sectionData.image"
                                            :key="image.alt"
                                            cols="auto"
                                        >
                                            <v-img
                                                :src="image.src"
                                                :alt="'image' + imageIndex"
                                                max-height="auto"
                                                max-width="300px"
                                            />
                                        </v-col>
                                        <v-col
                                            v-if="sectionData.list"
                                            cols="auto"
                                        >
                                            <h3>商品詳細</h3>
                                            <ul class="list-style">
                                                <li
                                                    v-for="(list, listIndex) in sectionData.list"
                                                    :key="'list' + listIndex"
                                                >
                                                    {{ list }}
                                                </li>
                                            </ul>
                                        </v-col>
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
import pageData from '~/assets/data/products.json'

export default {
    data () {
        return {
            categories: pageData.category,
            mainContents: pageData.mainContents,
            sideMenuItems: pageData.mainContents,
            subMenuItems: [],
            headerHeight: 0,
        }
    },

    mounted () {
        // Get Header Height & Scroll
        this.headerHeight = document.getElementsByClassName('getHeader')[0].clientHeight

        // Get Data From Each Tables
        {
            const requests = [
                { path: `/syouhin/${this.$route.params.category}/${this.$route.params.id}` },
                { path: `/syouhin/${this.$route.params.category}/all` },
            ]
                
            const getData = async (path) => {
                await this.$axios.$get(`/server/get${path}`)
                .then(response => {
                    console.log({
                        'Request': 'OK',
                        'Path': `/server/get${path}`,
                        'Response': response
                    });

                    switch (path) {
                        case `/syouhin/${this.$route.params.category}/all`: this.setSubMenuData(response); break
                        default: this.productsDataSet(response); break
                    }

                    // Side Menu Setting
                    this.$nuxt.$emit('getSideMenuItems', this.sideMenuItems)
                    // Sub Menu Setting
                    this.$nuxt.$emit('getSubMenuItems', this.subMenuItems)
                })
                .catch(error => console.log("ERROR",error))
            }
            
            requests.map(req => !req.path.match(/undefined/) && getData(req.path))
            
        }

    },

    methods: {
        // Products Data Table Setting
        productsDataSet(dataSet) {
            const category = this.$route.params.category
            const id = this.$route.params.id
            this.mainContents = []
            this.sideMenuItems = []
            dataSet.map(data => {
                const insertData = {
                    "id": data.aging_id,
                    "title": `${data.brand_name} / ${data.aging_name}`,
                    "to": `/products/${category}/${id}#${data.aging_id}`,
                    "image": [
                        {
                            "src": `/images/products/${data.image}`,
                            "alt": data.syouhin_id
                        }
                    ],
                    "list": [
                        `度数：${data.alc_degree}`,
                        `混合度：${data.mix_degree}`,
                        `蒸留所：${data.dest_name_kana}`,
                        `Nom：${data.dest_nom}`,
                        `参考価格：${data.min_price}円～`,
                        `生産地域：${data.local_name_kana}${data.area_name_kana}`,
                        `情報：${data.information}`,
                        `香り：${data.review_flavor}`,
                        `味：${data.review_top}`,
                        `余韻：${data.review_after}`,
                    ]
                }
                this.mainContents.push(insertData)
                this.sideMenuItems.push(insertData)
            })
            const agingsReplace = (
                dataSet[0].aging_sort === 'blanco' ? 'ブランコ'
                :
                dataSet[0].aging_sort === 'gold' ? 'ゴールド'
                :
                dataSet[0].aging_sort === 'reposado' ? 'レポサド'
                :
                dataSet[0].aging_sort === 'anejo' ? 'アネホ'
                :
                dataSet[0].aging_sort === 'extraanejo' ? 'エクストラアネホ'
                :
                dataSet[0].aging_sort === 'joven' ? 'ホベン'
                :
                dataSet[0].aging_sort === 'others' ? 'その他'
                :
                dataSet[0].aging_sort === 'cocktail' ? 'カクテル'
                :
                dataSet[0].aging_sort === 'mezcal' ? 'メスカル'
                :　''
            )
            const cond = (
                category === 'brands' ? dataSet[0].brand_name
                :
                category === 'destiladors' ? `${dataSet[0].dest_name_kana}(Nom ${dataSet[0].dest_nom})`
                :
                category === 'agings' ? agingsReplace
                : ''
            )
            this.categories = [
                {
                    id: category,
                    title: cond,
                    icon: "mdi-hexagon-slice-6",
                    note: "右上のサイドメニューからページ内ジャンプ、左上サブメニューから他のページにリンクできます。"
                }
            ]
        },
        // Products Side Menu List Setting Data
        setSubMenuData(dataSet) {
            this.subMenuItems = []
            const category = this.$route.params.category
            dataSet.map(data => {
                const cond = (
                    category === 'brands' ? [data.name, data.id]
                    :
                    category === 'destiladors' ? [data.name_kana, data.id]
                    :
                    category === 'agings' ? [data.name_kana, data.id]
                    : ''
                )
                const insertData = {
                    "title": cond[0],
                    "to": `/products/${category}/${cond[1]}`,
                    "icon": 'mdi-bookmark-outline'
                }
                this.subMenuItems.push(insertData)
            })
        },
    } 
}
</script>

<style lang="scss">
    .list-style {
        padding: 20px;
    }
    .paragraph-style {
        padding-left: 1em;
        padding-bottom: 20px;
    }
</style>
