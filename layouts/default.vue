<template>
    <!-- Layout start -->
    <v-app dark>

        <!-- Global-Menu-Area start -->
        <v-navigation-drawer
            v-model="drawer"
            :mini-variant="miniVariant"
            :clipped="clipped"
            fixed
            app
        >
            <v-list>

                <!-- Menu Title start -->
                <v-list-item>
                    <v-list-item-title v-text="'Menu'" />
                </v-list-item>
                <!-- Menu Title end -->

                <!-- Menu Contents start -->
                <v-list-item
                    v-for="(item, i) in menuItems"
                    :key="i"
                    :to="item.to"
                    router
                    exact
                >

                    <v-list-item-action>
                        <v-icon>{{ item.icon }}</v-icon>
                    </v-list-item-action>

                    <v-list-item-content>
                        <v-list-item-title v-text="item.title" />
                    </v-list-item-content>

                </v-list-item>
                <!-- Menu Contents end -->

                <!-- Sub Menu Title start -->
                <v-list-item>
                    <v-list-item-title v-text="'Sub Menu'" />
                </v-list-item>
                <!-- Sub Menu Title end -->

                <!-- Sub Menu Contents start -->
                <v-list-item
                    v-for="(item, i) in subMenuItems"
                    :key="item.title + i"
                    :to="item.to"
                    router
                    exact
                >

                    <v-list-item-action>
                        <v-icon>{{ item.icon }}</v-icon>
                    </v-list-item-action>

                    <v-list-item-content>
                        <v-list-item-title v-text="item.title" />
                    </v-list-item-content>

                </v-list-item>
                <!-- Sub Menu Contents end -->

            </v-list>
        </v-navigation-drawer>
        <!-- Global-Menu-Area end -->

        <!-- Header-Area start -->
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
        <!-- Header-Area end -->

        <!--  Main-Contents-Area start -->
        <v-main>
            <v-container>
                <Nuxt />
            </v-container>
        </v-main>
        <!--  Main-Contents-Area end -->

        <!-- Side-Menu-Area start -->
        <v-navigation-drawer
            v-model="rightDrawer"
            :right="right"
            temporary
            fixed
        >

            <v-list>

                <v-list-item>Layout Functions</v-list-item>

                <v-list-item
                    v-for="(item, i) in sideLayoutItems"
                    :key="item + i"
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

            <v-list>

                <v-list-item>Side Menu</v-list-item>

                <v-list-item
                    v-for="(item, i) in sideMenuItems"
                    :key="item + i"
                    :to="item.to"
                    router
                    exact
                >
                    <v-list-item-action v-if="item.icon">
                        <v-icon>{{ item.icon }}</v-icon>
                    </v-list-item-action>

                    <v-list-item-content>
                        <v-list-item-title>
                            {{ !item.icon ? i + 1 + '. ' : ''}}{{ item.title }}
                        </v-list-item-title>
                    </v-list-item-content>

                </v-list-item>

            </v-list>

        </v-navigation-drawer>
        <!-- Side-Menu-Area end -->

        <!-- Footer-Area start -->
        <v-footer
            :absolute="!fixed"
            app
        >
            <span>&copy; {{ title }} {{ new Date().getFullYear() }}</span>
        </v-footer>
        <!-- Footer-Area end -->

    </v-app>
    <!-- Layout end -->
</template>

<script>
import globals from '../assets/data/globals.json'

const Layout = {
    data () {
        return {
            clipped: true,
            drawer: false,
            fixed: false,
            menuItems: globals.menuLinks,
            sideMenuItems: [],
            subMenuItems: [],
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
        // pagesからサイドメニューのリストを取得
        this.$nuxt.$on('getSideMenuItems', this.setSideMenuItems)
        this.$nuxt.$on('getSubMenuItems', this.setSubMenuItems)
    },

    methods: {
        setSideMenuItems (value) {
            // pagesから取得したサイドメニューのリストを変数にセット
            this.sideMenuItems = value
        },
        setSubMenuItems (value) {
            // pagesから取得したサブメニューのリストを変数にセット
            this.subMenuItems = value
        },
    }
}

export default Layout

</script>
