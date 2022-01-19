<script lang="ts">
import { menuLinks } from '~/assets/data/globals.json'
import { PageMenuList, SubMenuList, GlobalMenuList } from '~/assets/types/types'

type BaseData = {
    mainContents: unknown,
    pageInfo: GlobalMenuList,
    subMenuLists: SubMenuList[],
    pageMenuLists: PageMenuList[],
}

export const getPageIndex = (pathName: string): number => {
    let pageIndex = Number()
    for (const [pageInfoIndex, pageInfo] of menuLinks.entries()) {
        if(pageInfo.to === pathName) pageIndex = pageInfoIndex
    }
    return pageIndex
}

export const setBaseData = (pathName: string, mainContents: unknown): BaseData => {
    return {
        mainContents,
        pageInfo: menuLinks[getPageIndex(pathName)],
        subMenuLists: [],
        pageMenuLists: [],
    }
}

export default {
    getPageIndex, setBaseData
}
</script>