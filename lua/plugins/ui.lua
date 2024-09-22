return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 10000,
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "carbonfox",
      },
    },
  },
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      plugins = {
        gitsigns = true,
        tmux = true,
        kitty = { enabled = false, font = "+2" },
      },
    },
    keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
███████╗ █████╗ ██╗         ██████╗ ██████╗ ██████╗ ███████╗███████╗
██╔════╝██╔══██╗██║        ██╔════╝██╔═══██╗██╔══██╗██╔════╝██╔════╝
███████╗███████║██║        ██║     ██║   ██║██║  ██║█████╗  ███████╗
╚════██║██╔══██║██║        ██║     ██║   ██║██║  ██║██╔══╝  ╚════██║
███████║██║  ██║███████╗██╗╚██████╗╚██████╔╝██████╔╝███████╗███████║
╚══════╝╚═╝  ╚═╝╚══════╝╚═╝ ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝╚══════╝
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
