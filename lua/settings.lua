---  HELPERS  ---

local cmd = vim.cmd
local opt = vim.opt

---  VIM ONLY COMMANDS  ---

cmd "filetype plugin on"
cmd('let &titleold="' .. TERMINAL .. '"')
cmd "set inccommand=split"
cmd "set iskeyword+=-"
cmd "set whichwrap+=<,>,[,],h,l"
if O.transparent_window then
  cmd "au ColorScheme * hi Normal ctermbg=none guibg=none"
  cmd "au ColorScheme * hi SignColumn ctermbg=none guibg=none"
end

---  SETTINGS  ---

opt.shortmess:append "c"
O.default_options = {
  backup = false, -- creates a backup file
  clipboard = "unnamedplus", -- allows neovim to access the system clipboard
  cmdheight = 2, -- more space in the neovim command line for displaying messages
  colorcolumn = "99999", -- fixes indentline for now
  completeopt = { "menuone", "noselect" },
  conceallevel = 0, -- so that `` is visible in markdown files
  fileencoding = "utf-8", -- the encoding written to a file
  guifont = "monospace:h17", -- the font used in graphical neovim applications
  hidden = true, -- required to keep multiple buffers and open multiple buffers
  hlsearch = false, -- highlight all matches on previous search pattern
  ignorecase = true, -- ignore case in search patterns
  mouse = "a", -- allow the mouse to be used in neovim
  pumheight = 10, -- pop up menu height
  showmode = false, -- we don't need to see things like -- INSERT -- anymore
  showtabline = 2, -- always show tabs
  smartcase = true, -- smart case
  smartindent = true, -- make indenting smarter again
  splitbelow = true, -- force all horizontal splits to go below current window
  splitright = true, -- force all vertical splits to go to the right of current window
  swapfile = false, -- creates a swapfile
  termguicolors = true, -- set term gui colors (most terminals support this)
  timeoutlen = 100, -- time to wait for a mapped sequence to complete (in milliseconds)
  title = true, -- set the title of window to the value of the titlestring
  -- opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
  undodir = CACHE_PATH .. "/undo", -- set an undo directory
  undofile = true, -- enable persisten undo
  updatetime = 300, -- faster completion
  writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true, -- convert tabs to spaces
  shiftwidth = 2, -- the number of spaces inserted for each indentation
  tabstop = 2, -- insert 2 spaces for a tab
  cursorline = true, -- highlight the current line
  number = true, -- set numbered lines
  relativenumber = false, -- set relative numbered lines
  numberwidth = 4, -- set number column width to 2 {default 4}
  signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
  wrap = false, -- display lines as one long line
  spell = false,
  spelllang = "en",
  scrolloff = 8, -- is one of my fav
}

for k, v in pairs(O.default_options) do
  opt[k] = v
end

local disabled_built_ins = {
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "gzip",
  "zip",
  "zipPlugin",
  "tar",
  "tarPlugin", -- 'man',
  "getscript",
  "getscriptPlugin",
  "vimball",
  "vimballPlugin",
  "2html_plugin",
  "logipat",
  "rrhelper",
  "spellfile_plugin",
  -- 'matchit', 'matchparen', 'shada_plugin',
}
for _, plugin in pairs(disabled_built_ins) do
  vim.g["loaded_" .. plugin] = 1
end
