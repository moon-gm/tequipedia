<template>
    <!-- Layout -->
        <v-app dark>

            <!-- Global Menu Area -->
                <v-navigation-drawer
                    v-model="drawer"
                    :mini-variant="miniVariant"
                    :clipped="clipped"
                    fixed
                    app
                >

                    <!-- Global Menu -->
                        <v-list>

                            <v-list-item>
                                <v-list-item-title v-text="'Global Menu'" />
                            </v-list-item>

                            <v-list-item
                                v-for="(gmItem, gmIndex) in globalMenuLists"
                                :key="'globalmenu' + gmIndex"
                                :to="gmItem.to"
                                router
                                exact
                            >

                                <v-list-item-action>
                                    <v-icon :color="gmItem.color">{{ gmItem.icon }}</v-icon>
                                </v-list-item-action>

                                <v-list-item-content>
                                    <v-list-item-title v-text="gmItem.title" />
                                </v-list-item-content>

                            </v-list-item>

                        </v-list>
                    <!-- Global Menu -->

                    <v-divider/>

                    <!-- Category Menu -->
                        <v-list>
                            <v-list-item>
                                <v-list-item-title v-text="'Category Menu'" />
                                <v-btn icon @click="categoryMenuFlag = !categoryMenuFlag">
                                    <v-icon>
                                        {{ categoryMenuFlag ? 'mdi-chevron-up' : 'mdi-chevron-down'}}
                                    </v-icon>
                                </v-btn>
                            </v-list-item>

                            <div
                                v-for="(cmItem, cmIndex) in categoryMenuLists"
                                :key="'categoryMenu' + cmIndex"
                            >
                                <v-list-item
                                    v-if="categoryMenuFlag"
                                    :to="cmItem.to"
                                    router
                                    exact
                                >

                                    <v-list-item-action>
                                        <v-icon :color="cmItem.color">{{ cmItem.icon }}</v-icon>
                                    </v-list-item-action>

                                    <v-list-item-content>
                                        <v-list-item-title v-text="cmItem.title" />
                                    </v-list-item-content>

                                </v-list-item>
                            </div>

                        </v-list>
                    <!-- Category Menu -->

                </v-navigation-drawer>
            <!-- Global Menu Area -->

            <!-- Header Area -->
                <v-app-bar
                    :clipped-left="clipped"
                    fixed
                    app
                    class="getHeader"
                >
                    <v-app-bar-nav-icon @click.stop="drawer = !drawer" />
                    <v-toolbar-title v-text="title" />
                    <v-spacer />
                    <v-btn
                        icon
                        @click.stop="rightDrawer = !rightDrawer"
                    >
                        <v-icon>mdi-backburger</v-icon>
                    </v-btn>
                </v-app-bar>
            <!-- Header Area -->

            <!--  Main Contents Area -->
                <v-main>
                    <v-container>
                        <Nuxt />
                    </v-container>
                </v-main>
            <!--  Main Contents Area -->

            <!-- Side Menu Area -->
                <v-navigation-drawer
                    v-model="rightDrawer"
                    :right="right"
                    temporary
                    fixed
                >

                    <!-- Page Menu -->
                        <v-list>
                            <v-list-item>
                                <v-list-item-title v-text="'Page Menu'" />
                                <v-btn icon @click="pageMenuFlag = !pageMenuFlag">
                                    <v-icon>
                                        {{ pageMenuFlag ? 'mdi-chevron-up' : 'mdi-chevron-down'}}
                                    </v-icon>
                                </v-btn>
                            </v-list-item>

                            <div
                                v-for="(pmItem, pmIndex) in pageMenuLists"
                                :key="'pageMenu' + pmIndex"
                            >
                                <v-list-item
                                    v-if="pageMenuFlag"
                                    :to="pmItem.to"
                                    router
                                    exact
                                >
                                    <v-list-item-action>
                                        <v-icon color="purple">mdi-bookmark-outline</v-icon>
                                    </v-list-item-action>

                                    <v-list-item-content>
                                        <v-list-item-title>
                                            {{ pmIndex + 1 }}. {{ pmItem.title }}
                                        </v-list-item-title>
                                        <v-list-item-subtitle
                                            v-if="pmItem.subtitle"
                                            v-text="pmItem.subtitle"
                                        />
                                    </v-list-item-content>

                                </v-list-item>
                            </div>

                        </v-list>
                    <!-- Page Menu -->

                    <v-divider/>
                    
                    <!-- Sub Menu -->
                        <v-list>
                            <v-list-item>
                                <v-list-item-title v-text="'Sub Menu'" />
                                <v-btn icon @click="subMenuFlag = !subMenuFlag">
                                    <v-icon>
                                        {{ subMenuFlag ? 'mdi-chevron-up' : 'mdi-chevron-down'}}
                                    </v-icon>
                                </v-btn>
                            </v-list-item>

                            <div
                                v-for="(smItem, smIndex) in subMenuLists"
                                :key="'subMenu' + smIndex"
                            >
                                <v-list-item
                                    v-if="subMenuFlag"
                                    :to="smItem.to"
                                    router
                                    exact
                                >

                                    <v-list-item-action>
                                        <v-icon :color="smItem.color">{{ smItem.icon }}</v-icon>
                                    </v-list-item-action>

                                    <v-list-item-content>
                                        <v-list-item-title v-text="smItem.title" />
                                        <v-list-item-subtitle
                                            v-if="smItem.subtitle"
                                            v-text="smItem.subtitle"
                                        />
                                    </v-list-item-content>

                                </v-list-item>
                            </div>

                        </v-list>
                    <!-- Sub Menu -->
                    
                    <v-divider/>

                    <!-- Layout Menu -->
                        <v-list>
                            <v-list-item>Layout Menu</v-list-item>

                            <v-list-item
                                v-for="(lmItem, lmIndex) in layoutMenuLists"
                                :key="'layoutmenu' + lmIndex"
                                @click.stop="lmItem.data"
                            >
                                <v-list-item-action>
                                    <v-icon>
                                        {{ lmItem.icon }}
                                    </v-icon>
                                </v-list-item-action>
                                <v-list-item-title>{{ lmItem.title }}</v-list-item-title>
                            </v-list-item>
                        </v-list>
                    <!-- Layout Menu -->

                </v-navigation-drawer>
            <!-- Side Menu Area -->

            <!-- Footer Area -->
                <v-footer app :absolute="!fixed">
                    <span>&copy; {{ title }} {{ new Date().getFullYear() }}</span>
                </v-footer>
            <!-- Footer Area -->

        </v-app>
    <!-- Layout -->
</template>

<script lang="ts">
import { menuLinks } from '~/assets/data/globals.json'
import { GlobalMenuList, PageMenuList, SubMenuList, CategoryMenuList, LayoutMenuList } from '~/assets/types/types'

const Layout = {
    data() {
        const baseData: Record<string, any> = {
            title: 'Tequipedia'
        }
        const menuListData: Record<string, any> = {
            globalMenu: {
                globalMenuLists: menuLinks as GlobalMenuList[]
            },
            categoryMenu: {
                categoryMenuLists: [] as CategoryMenuList[],
                categoryMenuFlag: true,
            },
            pageMenu: {
                pageMenuLists: [] as PageMenuList[],
                pageMenuFlag: true,
            },
            subMenu: {
                subMenuLists: [] as SubMenuList[],
                subMenuFlag: true,
            },
            layoutMenu: {
                clipped: true,
                drawer: false,
                fixed: false,
                miniVariant: false,
                right: true,
                rightDrawer: false,
            }
        }
        for (const menuData of Object.entries(menuListData)) {
            Object.assign(baseData, menuData[1])
        }
        return baseData
    },

    computed: {
        layoutMenuLists(): LayoutMenuList[] {
            return [
                {
                    data: (): void => {
                        this.miniVariant = !this.miniVariant
                    },
                    icon: `mdi-chevron-${this.miniVariant ? 'right' : 'left'}`,
                    title: `${this.miniVariant ? 'Extend' : 'Reduce'} Menu Text`
                },
                {
                    data: (): void => {
                        this.clipped = !this.clipped
                    },
                    icon: 'mdi-application',
                    title: `Menu ${this.clipped ? 'Over' : 'Under'} Header`
                },
                {
                    data: (): void => {
                        this.fixed = !this.fixed
                    },
                    icon: `mdi-chevron-${this.fixed ? 'down' : 'up'}`,
                    title: `${this.fixed ? 'Release' : 'Fix'} Footer`
                },
                {
                    data: (): void => {
                        this.right = !this.right
                    },
                    icon: 'mdi-repeat',
                    title: `Go ${this.right ? 'Left' : 'Right'}`
                },
            ]
        }
    },

    created() {
        // get menu lists from pages
        this.$nuxt.$on('getPageMenuLists', this.setPageMenuLists)
        this.$nuxt.$on('getSubMenuLists', this.setSubMenuLists)
        this.$nuxt.$on('getCategoryMenuLists', this.setCategoryMenuLists)
    },

    methods: {
        setPageMenuLists(getLists: PageMenuList[]): void {
            this.pageMenuLists = getLists
        },
        setSubMenuLists(getLists: SubMenuList[]): void {
            this.subMenuLists = getLists
        },
        setCategoryMenuLists(getLists: CategoryMenuList[]): void {
            this.categoryMenuLists = getLists
        },
    }
}

export default Layout

</script>
