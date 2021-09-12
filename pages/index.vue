<template>
    <v-row justify="center" align="start">
        <!-- Section Area -->
            <v-col
                v-for="(secData, secIdx) in mainContents"
                :key="secData + secIdx"
                cols="12" sm="10" md="9"
            >
                <!-- Space for Header Height -->
                    <v-spacer
                        :id="secData.id"
                        :style="`margin-bottom: ${headerHeight}px;`"
                    />
                <!-- Space for Header Height -->

                <!-- Section Title -->
                    <v-card color="rgba(0, 0, 0, 0)" elevation="0">
                        <v-card-title
                            class="headline section"
                        >
                            <v-icon
                                left
                                :color="pageInfo.color"
                            >
                                {{ pageInfo.icon }}
                            </v-icon>
                            {{ secIdx + 1 }}. {{ secData.title }}
                        </v-card-title>
                    </v-card>
                <!-- Section Title -->

                <!-- Sub Section Area -->
                    <v-card
                        v-for="(subsecData, subsecIdx) in secData.contents"
                        :key="subsecData + subsecIdx"
                        :class="secData.contents.length !== subsecIdx && 'sub-section'"
                    >                    

                        <!-- Sub Section Title -->
                            <!-- Case [Define Tequila] -->
                                <v-card-title
                                    v-if="secIdx === 1"
                                    :class="subsecIdx === 0 ? 'title' : 'subtitle-1'"
                                >
                                    {{ subsecIdx === 0 ? `${secIdx + 1}-${subsecIdx + 1}. ${subsecData.title}` : `${subsecIdx}. ${subsecData.title}` }}
                                </v-card-title>
                            <!-- Case [Define Tequila] -->
                            <!-- Default -->
                                <v-card-title
                                    v-else
                                    class="title"
                                >
                                    {{ secIdx + 1 }}-{{ subsecIdx + 1 }}. {{ subsecData.title }}
                                </v-card-title>
                            <!-- Default -->
                        <!-- Sub Section Title -->

                        <!-- Sub Section Contents -->
                            <v-card-text>
                                
                                <!-- Case Paragraph -->
                                    <p
                                        v-if="subsecData.paragraph"
                                        class="paragraph-style"
                                    >
                                        {{ subsecData.paragraph }}
                                    </p>
                                <!-- Case Paragraph -->

                                <!-- Case Image -->
                                    <v-row
                                        v-if="subsecData.image"
                                        justify="space-around"
                                        align="center"
                                    >
                                        <v-col
                                            v-for="(image) in subsecData.image"
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
                                        v-if="subsecData.list"
                                        class="list-style"
                                    >
                                        <li v-for="(list) in subsecData.list">
                                            {{ list }}
                                        </li>
                                    </ul>
                                <!-- Case List -->

                                <!-- Case Table -->
                                    <v-data-Table
                                        v-if="subsecData.table"
                                        :headers="subsecData.table.header"
                                        :items="subsecData.table.items"
                                        :items-per-page="subsecData.table.perPage"
                                        :group-by="subsecData.table.groupBy"
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
import { mainContents } from '~/assets/data/index.json'
import { menuLinks } from '~/assets/data/globals.json'

// Get Page Index
let pageIdx = Number()
menuLinks.map((pageInfo, idx) => {
    if(pageInfo.to === '/') pageIdx = idx
})

// Get Page Menu
const pageMenuLists = []
mainContents.map((item) => {
    pageMenuLists.push({
        title: item.title,
        to: `/#${item.id}`
    })
})

export default {
    data () {
        return {
            mainContents: mainContents,
            pageInfo: menuLinks[pageIdx],
            subMenuLists: [],
            pageMenuLists: pageMenuLists,
            headerHeight: 0,
        }
    },

    mounted () {

        // Set Sub Menu
        this.$nuxt.$emit('getSubMenuItems', this.subMenuLists)
        // Set Page Menu
        this.$nuxt.$emit('getSideMenuItems', this.pageMenuLists)

        // Get Header Height & Scroll Setting
        this.headerHeight = document.getElementsByClassName('getHeader')[0].clientHeight
        window.scrollTo(0, this.headerHeight)

        // Get Request Data & Set Response Data
        const requests = [
            {path: '/locals/category/joinA'},
            {path: '/agings/category/all'},
            {path: '/destiladors/category/joinABLS'},
        ]
        requests.map(req => this.getData(req)) 

    },

    methods: {

        // Get Request Data
        async getData(req) {
            const reqPath = `/server/get${req.path}`
            await this.$axios.$get(reqPath)
            .then(response => {
                console.log({'Request Path': reqPath, 'Response': response})
                this.setData(response, req.path.split('/')[1])
            })
            .catch(error => console.log('ERROR', error))
        },

        // Set Response Data
        setData(response, patern) {
            let insertData = {}
            response.map(data => {
                switch (patern) {
                    case 'locals':
                        insertData = {
                            local: data.local_name_kana,
                            area: data.area_name_kana
                        }
                        this.mainContents[2].contents[1].table.items.push(insertData);
                    break
                    case 'agings':
                        insertData = {
                            name: data.name_kana,
                            mean: data.definition,
                            rule: data.rule
                        }
                        this.mainContents[5].contents[0].table.items.push(insertData);
                    break
                    case 'destiladors':
                        insertData = {
                            local: data.local_name === 'その他' ? 'ハリスコ州外' : data.local_name,
                            dest: data.dest_name,
                            nom: data.nom,
                            brand: data.brand_name,
                            area: data.local_name === 'その他' ? data.state_name + data.area_name : data.area_name,
                        }
                        this.mainContents[8].contents[0].table.items.push(insertData);
                    break
                }
            })
        },

    } 
}
</script>

<style lang="scss" scoped>
    .list-style {
        padding: 20px;
    }
    .paragraph-style {
        padding-left: 1em;
    }
</style>
