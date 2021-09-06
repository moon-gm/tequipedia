<template>
    <v-row justify="center" align="start">
        <!-- Section Area -->
            <v-col
                v-for="(sectionData, secIndex) in pageData"
                :key="sectionData + secIndex"
                cols="12" sm="10" md="9"
            >
                <!-- Space for Header Height -->
                    <v-spacer
                        :id="sectionData.id"
                        :style="`margin-bottom: ${headerHeight}px;`"
                    />
                <!-- Space for Header Height -->

                <!-- Section Title -->
                    <v-card>
                        <v-card-title
                            class="headline section"
                        >
                            {{ secIndex + 1 }}. {{ sectionData.title }}
                        </v-card-title>
                    </v-card>
                <!-- Section Title -->

                <!-- Sub Section Area -->
                    <v-card
                        v-for="(subSectionData, subSecIndex) in sectionData.contents"
                        :key="subSectionData + subSecIndex"
                        :class="sectionData.contents.length !== subSecIndex && 'sub-section'"
                    >                    

                        <!-- Sub Section Title -->
                            <!-- Case [Define Tequila] -->
                                <v-card-title
                                    v-if="secIndex === 1"
                                    :class="subSecIndex === 0 ? 'title' : 'subtitle-1'"
                                >
                                    {{ subSecIndex === 0 ? `${secIndex + 1}-${subSecIndex + 1}. ${subSectionData.title}` : `${subSecIndex}. ${subSectionData.title}` }}
                                </v-card-title>
                            <!-- Case [Define Tequila] -->
                            <!-- Default -->
                                <v-card-title
                                    v-else
                                    class="title"
                                >
                                    {{ secIndex + 1 }}-{{ subSecIndex + 1 }}. {{ subSectionData.title }}
                                </v-card-title>
                            <!-- Default -->
                        <!-- Sub Section Title -->

                        <!-- Sub Section Contents -->
                            <v-card-text>
                                
                                <!-- Case Paragraph -->
                                    <p
                                        v-if="subSectionData.paragraph"
                                        class="paragraph-style"
                                    >
                                        {{ subSectionData.paragraph }}
                                    </p>
                                <!-- Case Paragraph -->

                                <!-- Case Image -->
                                    <v-row
                                        v-if="subSectionData.image"
                                        justify="space-around"
                                        align="center"
                                    >
                                        <v-col
                                            v-for="(image) in subSectionData.image"
                                            :key="image.alt"
                                            cols="auto"
                                        >
                                            <h4 v-if="image.description">{{ image.description }}</h4>
                                            <v-img
                                                :src="image.src"
                                                :alt="image.alt"
                                                max-height="auto"
                                                max-width="300px"
                                                gradient="rgba(255,255,255,0.5), rgba(0,0,0,0.5)"
                                            />
                                        </v-col>
                                    </v-row>
                                <!-- Case Image -->

                                <!-- Case List -->
                                    <ul
                                        v-if="subSectionData.list"
                                        class="list-style"
                                    >
                                        <li v-for="(list) in subSectionData.list">
                                            {{ list }}
                                        </li>
                                    </ul>
                                <!-- Case List -->

                                <!-- Case Table -->
                                    <v-data-Table
                                        v-if="subSectionData.table"
                                        :headers="subSectionData.table.header"
                                        :items="subSectionData.table.items"
                                        :items-per-page="subSectionData.table.perPage"
                                        :group-by="subSectionData.table.groupBy"
                                        multi-sort
                                    />
                                <!-- Case Table -->

                            </v-card-text>
                        <!-- Sub Section Contents -->

                    </v-card>
                <!-- Sub Section Area -->
            </v-col>
        <!-- Section Area -->
    </v-row>
</template>

<script>
import pageData from '~/assets/data/index.json'

const sideMenuItems = []
pageData.map((item, index) => {
    sideMenuItems.push({
        title: item.title,
        to: `/#${item.id}`
    })
})

export default {
    data () {
        return {
            sideMenuItems: sideMenuItems,
            pageData: pageData,
            headerHeight: 0,
            dataTable: {
                agings: [],
                locals: [],
                destiladors: [],
            }
        }
    },

    mounted () {
        // Side Menu Setting
        this.$nuxt.$emit('getSideMenuItems', this.sideMenuItems)

        // Get Header Height & Scroll
        this.headerHeight = document.getElementsByClassName('getHeader')[0].clientHeight
        window.scrollTo(0, this.headerHeight)

        // Get Data From Each Tables
        {
            const requests = [
                { path: '/locals/category/joinA' },
                { path: '/agings/category/all' },
                { path: '/destiladors/category/joinABLS' },
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
                        case '/agings/all': this.agingsDataSet(response); break
                        case '/locals/joinA': this.localsDataSet(response); break
                        case '/destiladors/joinABLS': this.destiladorsDataSet(response); break
                    }
                })
                .catch(error => console.log("ERROR",error))
            }
            
            requests.map(req => getData(req.path))
            
        }

    },

    methods: {
        // Agings Data Table Setting
        agingsDataSet(dataSet) {
            dataSet.map(data => {
                const insertData = {
                    name: data.name_kana,
                    mean: data.definition,
                    rule: data.rule
                }
                this.dataTable.agings.push(insertData)
                this.pageData[5].contents[0].table.items = this.dataTable.agings
            })
            return this.dataTable.agings
        },
        // Locals Data Table Setting
        localsDataSet(dataSet) {
            dataSet.map(data => {
                const insertData = {
                    local: data.local_name_kana,
                    area: data.area_name_kana
                }
                this.dataTable.locals.push(insertData)
                this.pageData[2].contents[1].table.items = this.dataTable.locals
            })
            return this.dataTable.locals
        },
        // Destiladors Data Table Setting
        destiladorsDataSet(dataSet) {
            dataSet.map(data => {
                const insertData = {
                    local: data.local_name === 'その他' ? 'ハリスコ州外' : data.local_name,
                    dest: data.dest_name,
                    nom: data.nom,
                    brand: data.brand_name,
                    area: data.local_name === 'その他' ? data.state_name + data.area_name : data.area_name,
                }
                this.dataTable.destiladors.push(insertData)
                this.pageData[8].contents[0].table.items = this.dataTable.destiladors
            })
            return this.dataTable.destiladors
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
    }
</style>
