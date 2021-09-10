<template>
    <v-row justify="center" align="start">
        <!-- Section Area -->
            <v-col
                v-for="(secData, secIdx) in mainContents"
                :key="secData + secIdx"
                cols="12" sm="10" md="9"
            >

                <!-- Section Title -->
                    <v-card>
                        <v-card-title class="headline section">
                            <v-icon
                                left
                                :color="pageInfo.color"
                            >
                                {{ pageInfo.icon }}
                            </v-icon>
                            {{ secData.title }}
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
                            <v-card-title class="title">
                                {{ subsecData.title }}
                            </v-card-title>
                        <!-- Sub Section Title -->

                        <!-- Sub Section Contents -->
                            <v-card-text>
                                
                                <!-- Case Paragraph -->
                                    <p v-if="subsecData.paragraph">
                                        {{ subsecData.paragraph }}
                                    </p>
                                <!-- Case Paragraph -->

                                <!-- Case Table -->
                                    <v-data-Table
                                        v-if="subsecData.table"
                                        :headers="subsecData.table.header"
                                        :items="subsecData.table.items"
                                        @click:row="externalLink"
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
import { mainContents } from '~/assets/data/shops.json'
import { menuLinks } from '~/assets/data/globals.json'

const pageIdx = 2

export default {
    data () {
        return {
            mainContents: mainContents,
            pageInfo: menuLinks[pageIdx],
            subMenuItems: [],
            sideMenuItems: [],
        }
    },

    mounted () {
        // Set Sub Menu
        this.$nuxt.$emit('getSubMenuItems', this.subMenuItems)
        // Set Side Menu
        this.$nuxt.$emit('getSideMenuItems', this.sideMenuItems)
    },

    methods: {
        // External Link
        externalLink (listData) {
            window.open(listData.url, '_blank') // v-data-table @click:rowでは、第一引数にクリックした行のObjectが渡される
        }
    }

}
</script>

<style lang="scss" scoped>
</style>
