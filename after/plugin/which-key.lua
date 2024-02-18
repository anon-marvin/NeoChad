local wk = require("which-key")
local mappings = {
    q = { ":q!<cr>", "Quit" },
    w = { ":w!<cr>", "Save" },
    x = { ":bdelete<cr>", "Close" },
    d = { ":Trouble<cr>", "Diagnostics" },
    Q = { ":wq!<cr>", "Save & Quit" },
    e = { ":NvimTreeToggle<cr>", "File Explorer" },
    s = { ":Telescope find_files<cr>", "Search" },
    g = { ":Telescope live_grep<cr>", "Grep" },
    r = { ":RunCode<cr>", "RunCode" },
    t = { ":ToggleTerm<cr>", "Terminal" },
    S = { ":vsplit<cr>", "Split Vertically" },
}
local opts = { prefix = '<leader>' }
wk.register(mappings, opts)
