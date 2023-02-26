local wk = require("which-key")

wk.register({
    e = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
    c = { "<cmd>bd<cr>", "Close buffer" },
    n = { "<cmd>nohl<cr>", "Clear Highlights" },
    f = {
        name = "Find",
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        w = { "<cmd>Telescope live_grep<cr>", "Find Words" },
        b = { "<cmd>Telescope buffers<cr>", "Find in Buffers" },
    },
    t = {
        name = "Trouble",
        t = { "<cmd>Trouble<cr>", "Trouble Toggle" },
        w = { "<cmd>Trouble workspace_diagnostics<cr>", "Trouble Workspace" },
        d = { "<cmd>Trouble document_diagnostics<cr>", "Trouble Document" },
        l = { "<cmd>Trouble loclist<cr>", "Trouble Loclist" },
        q = { "<cmd>Trouble quickfix<cr>", "Trouble Quickfix" },
        r = { "<cmd>Trouble lsp_references<cr>", "Trouble References" },
    },
    g = {
        name = "Git",
        g = { "<cmd>lua Lazygit_toggle()<cr>", "LazyGit" },
    },
    l = {
        name = "Lsp",
        r = { "<cmd>Lspsaga rename<cr>", "Rename Symbol" },
        a = { "<cmd>Lspsaga code_action<cr>", "Code Actions" },
        d = { "<cmd>Lspsaga preview_definition<cr>", "Peek Definition" },
        f = { "<cmd>Lspsaga lsp_finder<cr>", "Peek Implementation" },
        h = { "<cmd>Lspsaga hover_doc<cr>", "Hover Doc" },
        i = { "<cmd>LspInstall<cr>", "Install Servers" },
        m = { "<cmd>LspInstall<cr>", "Manage Servers" }
    }
}, { prefix = "<leader>" })

wk.register({
    ['[d'] = { "<cmd>lua vim.diagnostic.goto_prev()<cr>", "Previous diagnostic" },
    [']d'] = { "<cmd>lua vim.diagnostic.goto_next()<cr>", "Next diagnostic" },
    ['<leader>d'] = {
        name = "diagnostics",
        f = { "<cmd>lua vim.diagnostic.open_float()<cr>", "Float" },
        q = { "<cmd>lua vim.diagnostic.setloclist()<cr>", "Loclist" },
    },
    g = {
        d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "GoTo Definition" },
        D = { "<cmd>lua vim.lsp.buf.declaration()<cr>", "GoTo Declaration" },
        td = { "<cmd>lua vim.lsp.buf.type_definition()<cr>", "Goto Type Definition" },
        i = { "<cmd>lua vim.lsp.buf.implementation()<cr>", "GoTo Implementation" }
    },
    K = { "<cmd>lua vim.lsp.buf.hover()<cr>", "Hover" }
})

wk.register({
    ['<S-l>'] = { "<cmd>BufferLineCycleNext<cr>", "Next tab" },
    ['<S-h>'] = { "<cmd>BufferLineCyclePrev<cr>", "Prev tab" },
    ['<S-k>'] = { "<cmd>lua vim.lsp.buf.hover()<cr>", "Hover" },
    ['<C-k>'] = { "<cmd>wincmd k<cr>", "Jump to north pane" },
    ['<C-j>'] = { "<cmd>wincmd j<cr>", "Jump to south pane" },
    ['<C-h>'] = { "<cmd>wincmd h<cr>", "Jump to west pane" },
    ['<C-l>'] = { "<cmd>wincmd l<cr>", "Jump to east pane" },
    ['<C-g>'] = { "<cmd>lua Lazygit_toggle()<cr>", "LazyGit" },
    ['<C-a>'] = { "<cmd>CodeActionMenu<cr>", "CodeActionMenu" }
})


wk.register({
    ['<C-g>'] = { "<cmd>lua Lazygit_toggle()<cr>", "LazyGit" }
}, { mode = "t" })
