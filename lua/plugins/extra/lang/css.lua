return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts= function(_, opts)
            vim.list_extend(opts.ensure_installed, { "css", "scss" })
        end,
    },

    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                cssls = {
                    settings = {
                        css = {
                            validate = true
                          },
                          
                          scss = {
                            validate = true
                          }
                    }
                }
            }
        }
    }
}