local wk = require("which-key")
local Terminal = require('toggleterm.terminal').Terminal
local toggle_float = function()
    local float = Terminal:new({ direction = 'float' })
    return float:toggle()
end
local mappings = {
    q = { ":q!<cr>", "Quit" },
    w = { ":w!<cr>", "Save" },
    x = { ":bdelete<cr>", "Close" },
    d = { ":Trouble<cr>", "Diagnostics"},
    Q = { ":wq!<cr>", "Save & Quit" },
    e= { ":NvimTreeToggle<cr>", "File Explorer" },
    s = { ":Telescope find_files<cr>", "Search" },
    g = { ":Telescope live_grep<cr>", "Grep" },
    r = { ":RunCode<cr>", "RunCode" },
    t = { ":ToggleTerm<cr>", "Terminal" },
    S = { ":vsplit<cr>", "Split Vertically" },
    tt = { toggle_float, "Floating Terminal" }
}
local opts = { prefix = '<leader>' }
wk.register(mappings, opts)
