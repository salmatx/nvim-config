return {
    {
        "akinsho/bufferline.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            vim.opt.termguicolors = true
            require("bufferline").setup({
                options = {
                    numbers = "ordinal",
                    close_command = "bdelete! %d",  -- Command to close buffers
                    right_mouse_command = "bdelete! %d",  -- Right-click to close buffer
                    left_mouse_command = "buffer %d",  -- Left-click to switch buffer
                    middle_mouse_command = nil,  -- Disable middle-click close
                    show_buffer_close_icons = true,
                    show_close_icon = false,
                    separator_style = "slant",
                    enforce_regular_tabs = false,
                    always_show_bufferline = true,
                    diagnostics = "nvim_lsp",
                    hover = {
                        enabled = true,
                        delay = 150,
                        reveal = { "close" }
                    }
                },
            })


            vim.api.nvim_set_keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
            vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
            vim.api.nvim_set_keymap("n", "<leader>bp", ":BufferLinePick<CR>", { noremap = true, silent = true })
            vim.api.nvim_set_keymap("n", "<leader>bc", ":BufferLineCloseOthers<CR>", { noremap = true, silent = true })
            vim.api.nvim_set_keymap("n", "<leader>bn", ":BufferLineMoveNext<CR>", { noremap = true, silent = true })
            vim.api.nvim_set_keymap("n", "<leader>bb", ":BufferLineMovePrev<CR>", { noremap = true, silent = true })
        end,
    }
}

