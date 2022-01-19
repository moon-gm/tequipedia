<template>
    <v-row justify="center" align="start">
        <!-- Section Area -->
            <v-col
                v-for="(secData, secIdx) in mainContents"
                :key="secData + secIdx"
                cols="12" sm="10" md="9"
            >

                <!-- Section Title -->
                    <v-card color="rgba(0, 0, 0, 0)" elevation="0">
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

                        <v-divider/>

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

<script lang="ts">
import { mainContents } from '~/assets/data/references.json'
import { setBaseData } from '~/components/common-methods'

export default {
    data() {
        return setBaseData('/references', mainContents)
    },

    mounted() {
        // Set Sub Menu
        this.$nuxt.$emit('getSubMenuLists', this.subMenuLists)
        // Set Page Menu
        this.$nuxt.$emit('getPageMenuLists', this.pageMenuLists)
    }

}
</script>

<style lang="scss" scoped>
</style>
