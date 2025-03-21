CONFIG_PATH = vim.fn.stdpath "config"
DATA_PATH = vim.fn.stdpath "data"
CACHE_PATH = vim.fn.stdpath "cache"
TERMINAL = vim.fn.expand "$TERMINAL"
USER = vim.fn.expand "$USER"

O = {
  leader_key = "space",
  colorscheme = "spacegray",
  transparent_window = false,
  format_on_save = true,
  vnsip_dir = vim.fn.stdpath "config" .. "/snippets",

  -- TODO refactor for tree
  auto_close_tree = 0,
  nvim_tree_disable_netrw = 0,

  -- TODO refactor treesitter
  -- @usage pass a table with your desired languages
  treesitter = {
    ensure_installed = "all",
    ignore_install = { "haskell" },
    highlight = { enabled = true },
    -- The below are for treesitter-textobjects plugin
    textobj_prefixes = {
      goto_next = "]", -- Go to next
      goto_previous = "[", -- Go to previous
      inner = "i", -- Select inside
      outer = "a", -- Selct around
      swap = "<leader>a", -- Swap with next
    },
    textobj_suffixes = {
      -- Start and End respectively for the goto keys
      -- for other keys it only uses the first
      ["function"] = { "f", "F" },
      ["class"] = { "m", "M" },
      ["parameter"] = { "a", "A" },
      ["block"] = { "k", "K" },
      ["conditional"] = { "i", "I" },
      ["call"] = { "c", "C" },
      ["loop"] = { "l", "L" },
      ["statement"] = { "s", "S" },
      ["comment"] = { "/", "?" },
    },
    -- The below is for treesitter hint textobjects plugin
    hint_labels = { "h", "j", "f", "d", "n", "v", "s", "l", "a" },
  },

  lsp = {
    document_highlight = true,
    popup_border = "single",
  },

  database = { save_location = "~/.config/lunarvim_db", auto_execute = 1 },

  plugin = {
    -- Builtins
    diffview = { active = false },
    ts_context_commentstring = { active = false },
    ts_hintobjects = { active = false },
    ts_autotag = { active = false },
    ts_rainbow = { active = false },
    ts_textobjects = { active = false },
    ts_textsubjects = { active = false },
    telescope_fzy = { active = false },
    telescope_project = { active = false },
    indent_line = { active = false },
    lush = { active = false },
  },

  -- TODO just using mappings (leader mappings)
  user_which_key = {},

  user_plugins = {
    -- use lv-config.lua for this not put here
  },

  user_autocommands = {
    { "FileType", "qf", "set nobuflisted" },
  },

  lang = {
    cmake = {},
    clang = {
      diagnostics = {
        virtual_text = { spacing = 0, prefix = "" },
        signs = true,
        underline = true,
      },
      cross_file_rename = true,
      header_insertion = "never",
    },
    css = {
      virtual_text = true,
    },
    dart = {
      sdk_path = "/usr/lib/dart/bin/snapshots/analysis_server.dart.snapshot",
    },
    docker = {},
    efm = {},
    elm = {},
    emmet = { active = true },
    elixir = {},
    graphql = {},
    go = {},
    html = {},
    java = {
      java_tools = {
        active = false,
      },
    },
    json = {
      diagnostics = {
        virtual_text = { spacing = 0, prefix = "" },
        signs = true,
        underline = true,
      },
    },
    kotlin = {},
    latex = {},
    lua = {
      diagnostics = {
        virtual_text = { spacing = 0, prefix = "" },
        signs = true,
        underline = true,
      },
    },
    php = {
      format = {
        format = {
          default = "psr12",
        },
      },
      environment = {
        php_version = "7.4",
      },
      diagnostics = {
        virtual_text = { spacing = 0, prefix = "" },
        signs = true,
        underline = true,
      },
      filetypes = { "php", "phtml" },
    },
    python = {
      linter = "",
      isort = false,
      diagnostics = {
        virtual_text = { spacing = 0, prefix = "" },
        signs = true,
        underline = true,
      },
      analysis = {
        type_checking = "basic",
        auto_search_paths = true,
        use_library_code_types = true,
      },
    },
    ruby = {
      diagnostics = {
        virtualtext = { spacing = 0, prefix = "" },
        signs = true,
        underline = true,
      },
      filetypes = { "rb", "erb", "rakefile", "ruby" },
    },
    rust = {
      rust_tools = {
        active = false,
        parameter_hints_prefix = "<-",
        other_hints_prefix = "=>", -- prefix for all the other hints (type, chaining)
      },
      linter = "",
      diagnostics = {
        virtual_text = { spacing = 0, prefix = "" },
        signs = true,
        underline = true,
      },
    },
    sh = {
      -- @usage can be 'shellcheck'
      linter = "",
      -- @usage can be 'shfmt'
      diagnostics = {
        virtual_text = { spacing = 0, prefix = "" },
        signs = true,
        underline = true,
      },
    },
    svelte = {},
    tailwindcss = {
      active = false,
      filetypes = {
        "html",
        "css",
        "scss",
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
      },
    },
    terraform = {},
    tsserver = {
      -- @usage can be 'eslint'
      linter = "",
      diagnostics = {
        virtual_text = { spacing = 0, prefix = "" },
        signs = true,
        underline = true,
      },
    },
    vim = {},
    yaml = {},
  },
}

require "lv-zen.config"
require "lv-compe.config"
require "lv-dashboard.config"
require "lv-floatterm.config"
require "lv-galaxyline.config"
require "lv-gitsigns.config"
require "lv-telescope.config"
require "lv-dap.config"
require "lv-which-key.config"
