<template>
    <v-row justify="center" align="start">
        <!-- Section Area -->
            <v-col
                v-for="(secData, secIdx) in categoryMenuLists"
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

<script lang="ts">
import { category } from '~/assets/data/products.json'
import { PageMenuList, SubMenuList, CategoryMenuList } from '~/assets/types/types'


export default {
    data () {
        return {
            categoryMenuLists: category as CategoryMenuList[],
            subMenuLists: [] as SubMenuList[],
            pageMenuLists: [] as PageMenuList[],
        }
    },

    mounted () {
        // Set Category Menu
        this.$nuxt.$emit('getCategoryMenuLists', this.categoryMenuLists)
        // Set Sub Menu
        this.$nuxt.$emit('getSubMenuLists', this.subMenuLists)
        // Set Page Menu
        this.$nuxt.$emit('getPageMenuLists', this.pageMenuLists)
    }
}
</script>

<style lang="scss" scoped>
</style>
