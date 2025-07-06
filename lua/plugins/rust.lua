return {
  "mrcjkb/rustaceanvim",
  dependencies = {
    "chrisgrieser/nvim-lsp-endhints",
    event = "LspAttach",
    opts = {}, -- required, even if empty
  },

  version = "^6", -- Recommended
  lazy = false, -- This plugin is already lazy
}
-- return {
--   {
--     "mrcjkb/rustaceanvim",
--     dependencies = {
--       {
--         "lvimuser/lsp-inlayhints.nvim",
--         opts = {},
--       },
--     },
--     ft = { "rust" },
--     config = function()
--       vim.g.rustaceanvim = {
--         tools = {
--           hover_actions = {
--             auto_focus = true,
--           },
--         },
--         server = {
--           on_attach = function(client, bufnr)
--             require("lsp-inlayhints").on_attach(client, bufnr)
--             require("lsp-inlayhints").show()
--           end,
--         },
--       }
--     end,
--
--     -- "mrcjkb/rustaceanvim",
--     --
--     version = "^4", -- Recommended
--     lazy = false, -- This plugin is already lazy
--   },
-- }
