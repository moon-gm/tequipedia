<template>
    <v-row justify="center" align="start">
        <!-- Section Area -->
            <v-col
                v-for="(sectionData, secIndex) in pageData"
                :key="sectionData + secIndex"
                cols="12" sm="10" md="9"
            >

                <!-- Section Title -->
                    <v-card>
                        <v-card-title
                            class="headline section"
                        >
                            {{ sectionData.title }}
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
                            <v-card-title class="title">
                                {{ subSectionData.title }}
                            </v-card-title>
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

                                <!-- Case Table -->
                                    <v-data-Table
                                        v-if="subSectionData.table"
                                        :headers="subSectionData.table.header"
                                        :items="subSectionData.table.items"
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
import pageData from '~/assets/data/references.json'

export default {
    data () {
        return {
            sideMenuItems: [],
            pageData: pageData,
        }
    },

    mounted () {
        // Side Menu Setting
        this.$nuxt.$emit('getSideMenuItems', this.sideMenuItems)
    }

}
</script>

<style lang="scss">
</style>
