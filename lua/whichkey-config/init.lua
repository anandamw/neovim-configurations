local wk = require("which-key")

-- Definisikan mappings
local mappings = {
  q = {":q<CR>", "Quit"},                         -- Quit Neovim
  Q = {":wq<CR>", "Save & Quit"},                 -- Save and quit
  e = {":NvimTreeToggle<CR>", "NvimTree Toggle"},  -- Toggle NvimTree file explorer
  w = {":w<CR>", "Save"},                         -- Save file
  x = {":bdelete<CR>", "Close Buffer"},          -- Close buffer
  E = {":e /home/nndmw/.config/nvim/init.lua<CR>", "Edit Config"},  -- Edit init.lua config file

  -- Shortcut tambahan
  f = {":Telescope find_files<CR>", "Find Files"},            -- Find files with Telescope
  g = {":Telescope live_grep<CR>", "Grep Files"},            -- Live grep with Telescope
  b = {":buffers<CR>", "List Buffers"},                       -- List all open buffers
  l = {":LspInfo<CR>", "LSP Info"},                           -- Show LSP info
  r = {":source %<CR>", "Reload Config"},                     -- Reload current config file
  c = {":e!<CR>", "Reload Current File"},                     -- Reload current file
  s = {":set spell!<CR>", "Toggle Spell Check"},              -- Toggle spell check
}

local opts = { prefix = '<leader>' }  -- Define leader key mappings
wk.register(mappings, opts)

