return {
  "nvim-flutter/flutter-tools.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for vim.ui.select
  },
  config = function()
    require("flutter-tools").setup({
      ui = {
        -- the border type to use for all floating windows, the same options/formats
        -- used for ":h nvim_open_win" e.g. "single" | "shadow" | {<table-of-eight-chars>}
        border = "rounded",
        notification_style = "native",
      },
      decorations = {
        statusline = {
          -- set to true to be able use the 'flutter_tools_decorations.app_version' in your statusline
          -- this will show the current version of the flutter app from the pubspec.yaml file
          app_version = true,
          -- set to true to be able use the 'flutter_tools_decorations.device' in your statusline
          -- this will show the currently running device if an application was started with a specific
          -- device
          device = true,
          -- set to true to be able use the 'flutter_tools_decorations.project_config' in your statusline
          -- this will show the currently selected project configuration
          project_config = true,
        },
      },

      -- flutter_lookup_cmd = "dirname $(which flutter)",

      widget_guides = {
        enabled = true,
      },

      closing_tags = {
        highlight = "ErrorMsg", -- highlight for the closing tag
        prefix = ">", -- character to use for close tag e.g. > Widget
        priority = 10, -- priority of virtual text in current line
        -- consider to configure this when there is a possibility of multiple virtual text items in one line
        -- see `priority` option in |:help nvim_buf_set_extmark| for more info
        enabled = true, -- set to false to disable
      },

      lsp = {
        color = { -- show the derived colours for dart variables
          enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
          background = true, -- highlight the background
          virtual_text = true, -- show the highlight using virtual text
        },

        settings = {
          showTodos = true,
          completeFunctionCalls = true,
          renameFilesWithClasses = "prompt", -- "always"
          enableSnippets = true,
          updateImportsOnRename = true, -- Whether to update imports and other directives when files are renamed. Required for `FlutterRename` command.
        },
      },
    })
  end,
}
