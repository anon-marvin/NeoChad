require("nvim-tree").setup({
    git = {
        enable = true,
    },
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 30,
    },
    renderer = {
         highlight_git = true,
        icons = {
        show = {
            git = true,
            },
        },    },
    filters = {
        dotfiles = true,
    },
})
