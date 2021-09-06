<template>
    <v-row justify="center" align="start">
        <!-- Section Area -->
            <v-col
                v-for="(sectionData, secIndex) in subMenuItems"
                :key="sectionData + secIndex"
                cols="10" sm="8" md="6"
            >
                <v-card>
                    <v-card-title class="headline section">
                        <v-icon left>{{ sectionData.icon }}</v-icon>
                        {{ sectionData.title }}
                    </v-card-title>
                    <v-card-text>
                        {{ sectionData.description }}
                    </v-card-text>
                    <v-card-text>
                        <v-btn absolute right link nuxt :to="sectionData.to">
                            {{ sectionData.title }}商品一覧へ
                        </v-btn>
                    </v-card-text>
                </v-card>
            </v-col>
        <!-- Section Area -->
    </v-row>
</template>

<script>
import pageData from '~/assets/data/products.json'

export default {
    data () {
        return {
            subMenuItems: pageData.category,
        }
    },

    mounted () {
        // Sub Menu Setting
        this.$nuxt.$emit('getSubMenuItems', this.subMenuItems)

    }
}
</script>

<style lang="scss">
</style>
