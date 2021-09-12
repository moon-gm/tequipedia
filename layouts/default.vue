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
                                v-for="(item, i) in globalMenuItems"
                                :key="'globalmenu' + i"
                                :to="item.to"
                                router
                                exact
                            >

                                <v-list-item-action>
                                    <v-icon :color="item.color">{{ item.icon }}</v-icon>
                                </v-list-item-action>

                                <v-list-item-content>
                                    <v-list-item-title v-text="item.title" />
                                </v-list-item-content>

                            </v-list-item>

                        </v-list>
                    <!-- Global Menu -->

                    <v-divider/>

                    <!-- Category Menu -->
                        <v-list>
                            <v-list-item>
                                <v-list-item-title v-text="'Category Menu'" />
                                <v-btn icon @click="categoryMenu = !categoryMenu">
                                    <v-icon>
                                        {{ categoryMenu ? 'mdi-chevron-up' : 'mdi-chevron-down'}}
                                    </v-icon>
                                </v-btn>
                            </v-list-item>

                            <v-list-item
                                v-if="categoryMenu"
                                v-for="(item, i) in categoryMenuLists"
                                :key="'categoryMenu' + i"
                                :to="item.to"
                                router
                                exact
                            >

                                <v-list-item-action>
                                    <v-icon :color="item.color">{{ item.icon }}</v-icon>
                                </v-list-item-action>

                                <v-list-item-content>
                                    <v-list-item-title v-text="item.title" />
                                </v-list-item-content>

                            </v-list-item>

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
                                <v-btn icon @click="pageMenu = !pageMenu">
                                    <v-icon>
                                        {{ pageMenu ? 'mdi-chevron-up' : 'mdi-chevron-down'}}
                                    </v-icon>
                                </v-btn>
                            </v-list-item>

                            <v-list-item
                                v-if="pageMenu"
                                v-for="(item, i) in pageMenuLists"
                                :key="'pageMenu' + i"
                                :to="item.to"
                                router
                                exact
                            >
                                <v-list-item-action>
                                    <v-icon color="purple">mdi-bookmark-outline</v-icon>
                                </v-list-item-action>

                                <v-list-item-content>
                                    <v-list-item-title>
                                        {{ i + 1 }}. {{ item.title }}
                                    </v-list-item-title>
                                    <v-list-item-subtitle
                                        v-if="item.subtitle"
                                        v-text="item.subtitle"
                                    />
                                </v-list-item-content>

                            </v-list-item>

                        </v-list>
                    <!-- Page Menu -->

                    <v-divider/>
                    
                    <!-- Sub Menu -->
                        <v-list>
                            <v-list-item>
                                <v-list-item-title v-text="'Sub Menu'" />
                                <v-btn icon @click="subMenu = !subMenu">
                                    <v-icon>
                                        {{ subMenu ? 'mdi-chevron-up' : 'mdi-chevron-down'}}
                                    </v-icon>
                                </v-btn>
                            </v-list-item>

                            <v-list-item
                                v-if="subMenu"
                                v-for="(item, i) in subMenuLists"
                                :key="'subMenu' + i"
                                :to="item.to"
                                router
                                exact
                            >

                                <v-list-item-action>
                                    <v-icon :color="item.color">{{ item.icon }}</v-icon>
                                </v-list-item-action>

                                <v-list-item-content>
                                    <v-list-item-title v-text="item.title" />
                                    <v-list-item-subtitle
                                        v-if="item.subtitle"
                                        v-text="item.subtitle"
                                    />
                                </v-list-item-content>

                            </v-list-item>

                        </v-list>
                    <!-- Sub Menu -->
                    
                    <v-divider/>

                    <!-- Layout Menu -->
                        <v-list>
                            <v-list-item>Layout Menu</v-list-item>

                            <v-list-item
                                v-for="(item, i) in sideLayoutItems"
                                :key="'layoutmenu' + i"
                                @click.stop="item.data"
                            >
                                <v-list-item-action>
                                    <v-icon>
                                        {{ item.icon }}
                                    </v-icon>
                                </v-list-item-action>
                                <v-list-item-title>{{ item.title }}</v-list-item-title>
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

<script>
import { menuLinks } from '../assets/data/globals.json'

const Layout = {
    data () {
        return {
            // Global Menu
            globalMenuItems: menuLinks,
            // Category Menu
            categoryMenuLists: [],
            categoryMenu: true,
            // Page Menu
            pageMenuLists: [],
            pageMenu: true,
            // Sub Menu
            subMenuLists: [],
            subMenu: true,
            // Layout Menu
            clipped: true,
            drawer: false,
            fixed: false,
            miniVariant: false,
            right: true,
            rightDrawer: false,
            title: 'Tequipedia'
        }
    },

    computed: {
        sideLayoutItems () {
            return [
                {
                    data: () => this.miniVariant = !this.miniVariant,
                    icon: `mdi-chevron-${this.miniVariant ? 'right' : 'left'}`,
                    title: `${this.miniVariant ? 'Extend' : 'Reduce'} Menu Text`
                },
                {
                    data: () => this.clipped = !this.clipped,
                    icon: 'mdi-application',
                    title: `Menu ${this.clipped ? 'Over' : 'Under'} Header`
                },
                {
                    data: () => this.fixed = !this.fixed,
                    icon: `mdi-chevron-${this.fixed ? 'down' : 'up'}`,
                    title: `${this.fixed ? 'Release' : 'Fix'} Footer`
                },
                {
                    data: () => this.right = !this.right,
                    icon: 'mdi-repeat',
                    title: `Go ${this.right ? 'Left' : 'Right'}`
                },
            ]
        }
    },

    created () {
        // pagesからメニューのリストを取得
        this.$nuxt.$on('getSideMenuItems', this.setSideMenuItems)
        this.$nuxt.$on('getSubMenuItems', this.setSubMenuItems)
        this.$nuxt.$on('getPageMenuItems', this.setPageMenuItems)
    },

    methods: {
        setSideMenuItems (value) {
            // pagesから取得したサイドメニューのリストを変数にセット
            this.pageMenuLists = value
        },
        setSubMenuItems (value) {
            // pagesから取得したサブメニューのリストを変数にセット
            this.subMenuLists = value
        },
        setPageMenuItems (value) {
            // pagesから取得したページメニューのリストを変数にセット
            this.categoryMenuLists = value
        },
    }
}

export default Layout

</script>
