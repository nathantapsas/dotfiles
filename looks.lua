# looks.lua
return {
  {
    "nvimdev/dashboard-nvim",
    opts = function()
      local logo = [[
                                                                            
              ████ ██████           █████      ██                     
             ███████████             █████                             
             █████████ ███████████████████ ███   ███████████   
            █████████  ███    █████████████ █████ ██████████████   
           █████████ ██████████ █████████ █████ █████ ████ █████   
         ███████████ ███    ███ █████████ █████ █████ ████ █████  
        ██████  █████████████████████ ████ █████ █████ ████ ██████ 
       ]]
       # This can be hardcoded!!!

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      local Util = require("lazyvim.util")

      local opts = {
        theme = "doom",
        hide = {
          -- this is taken care of by lualine
          -- enabling this messes up the actual laststatus setting after loading a file
          statusline = false,
        },
        config = {
          header = vim.split(logo, "\n"),
      -- stylua: ignore
      center = {
        { action = Util.telescope("files"),                                    desc = " Find file",       icon = " ", key = "f" },
        { action = "ene | startinsert",                                        desc = " New file",        icon = " ", key = "n" },
        { action = "Telescope oldfiles",                                       desc = " Recent files",    icon = " ", key = "r" },
        { action = "Telescope live_grep",                                      desc = " Find text",       icon = " ", key = "g" },
        { action = [[lua require("lazyvim.util").telescope.config_files()()]], desc = " Config",          icon = " ", key = "c" },
        { action = 'lua require("persistence").load()',                        desc = " Restore Session", icon = " ", key = "s" },
        { action = "LazyExtras",                                               desc = " Lazy Extras",     icon = " ", key = "x" },
        { action = "Lazy",                                                     desc = " Lazy",            icon = "󰒲 ", key = "l" },
        { action = "qa",                                                       desc = " Quit",            icon = " ", key = "q" },
      },
          footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
          end,
        },
      }

      for _, button in ipairs(opts.config.center) do
        button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
        button.key_format = "  %s"
      end

      -- close Lazy and re-open when the dashboard is ready
      if vim.o.filetype == "lazy" then
        vim.cmd.close()
        vim.api.nvim_create_autocmd("User", {
          pattern = "DashboardLoaded",
          callback = function()
            require("lazy").show()
          end,
        })
      end

      return opts
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      transparent_background = true,
      integrations = {
        cmp = true,
      },
      color_overrides = {
        mocha = {
          rosewater = "#efc9c2",
          flamingo = "#ebb2b2",
          pink = "#f2a7de",
          mauve = "#b889f4",
          red = "#ea7183",
          maroon = "#ea838c",
          peach = "#f39967",
          yellow = "#eaca89",
          green = "#96d382",
          teal = "#78cec1",
          sky = "#91d7e3",
          sapphire = "#68bae0",
          blue = "#739df2",
          lavender = "#a0a8f6",
          text = "#b5c1f1",
          subtext1 = "#a6b0d8",
          subtext0 = "#959ec2",
          overlay2 = "#848cad",
          overlay1 = "#717997",
          overlay0 = "#63677f",
          surface2 = "#505469",
          surface1 = "#3e4255",
          surface0 = "#2c2f40",
          base = "#1a1c2a",
          mantle = "#141620",
          crust = "#0e0f16",
        },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      -- local cmp = require("cmp")
      opts.window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
        completion = {
          border = "rounded",
          winhighlight = "Normal:FloatBorder,FloatBorder:FloatBorder",
        },
        documentation = {
          border = "rounded",
          winhighlight = "Normal:FloatBorder,FloatBorder:FloatBorder",
        },
      }
      vim.opt.pumblend = 0
    end,
  },
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
      },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      window = {
        border = "single",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}

# copilot.lua
return {
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
      },
    },
  },
  {
    "zbirenbaum/copilot-cmp",
    enabled = false,
  },
}
