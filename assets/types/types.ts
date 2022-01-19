export type GlobalMenuList = {
    title: string,
    to: string,
    color: string,
    icon: string
}

export type PageMenuList = {
    title: string,
    subTitle?: string,
    to: string
}

export type SubMenuList = {
    title: string,
    subTitle?: string,
    to: string,
    color: string,
    icon: string
}

export type CategoryMenuList = {
    title: string,
    to: string,
    color: string,
    icon: string,
    description: string
    id: string
}

export type LayoutMenuList = {
    data: () => void,
    icon: string,
    title: string
}