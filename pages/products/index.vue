<template>
    <v-row justify="center" align="start">
        <!-- Section Area -->
            <v-col
                v-for="(secData, secIdx) in pageMenuItems"
                :key="secData + secIdx"
                cols="10" sm="8" md="6"
            >
                <v-card>

                    <v-card-title class="headline section">
                        <v-icon
                            left
                            :color="secData.color"
                        >
                            {{ secData.icon }}
                        </v-icon>
                        {{ secData.title }}
                    </v-card-title>

                    <v-card-text>
                        {{ secData.description }}
                    </v-card-text>

                    <v-card-text>
                        <v-btn
                            absolute right
                            link nuxt
                            :to="secData.to"
                            color="blue darken-2"
                        >
                            {{ secData.title }} 商品一覧へ
                        </v-btn>
                    </v-card-text>

                </v-card>
            </v-col>
        <!-- Section Area -->
    </v-row>
</template>

<script>
import { category } from '~/assets/data/products.json'

export default {
    data () {
        return {
            pageMenuItems: category,
            subMenuItems: [],
            sideMenuItems: [],
        }
    },

    mounted () {
        // Set Page Menu
        this.$nuxt.$emit('getPageMenuItems', this.pageMenuItems)
        // Set Sub Menu
        this.$nuxt.$emit('getSubMenuItems', this.subMenuItems)
        // Set Side Menu
        this.$nuxt.$emit('getSideMenuItems', this.sideMenuItems)
    }
}
</script>

<style lang="scss" scoped>
</style>
