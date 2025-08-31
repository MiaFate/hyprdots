-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/mia/.cache/nvim/packer_hererocks/2.1.1753364724/share/lua/5.1/?.lua;/home/mia/.cache/nvim/packer_hererocks/2.1.1753364724/share/lua/5.1/?/init.lua;/home/mia/.cache/nvim/packer_hererocks/2.1.1753364724/lib/luarocks/rocks-5.1/?.lua;/home/mia/.cache/nvim/packer_hererocks/2.1.1753364724/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/mia/.cache/nvim/packer_hererocks/2.1.1753364724/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/mia/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/mia/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/home/mia/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/mia/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/mia/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/mia/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n∫\6\0\0\a\0)\0N5\0\0\0005\1\14\0005\2\6\0005\3\2\0009\4\1\0=\4\3\0039\4\4\0=\4\5\3=\3\a\0025\3\t\0009\4\b\0=\4\3\0039\4\n\0=\4\5\3=\3\v\0025\3\f\0009\4\1\0=\4\3\0039\4\1\0=\4\5\3=\3\r\2=\2\15\0015\2\18\0005\3\16\0009\4\1\0=\4\3\0039\4\17\0=\4\5\3=\3\a\2=\2\19\0015\2\22\0005\3\20\0009\4\1\0=\4\3\0039\4\21\0=\4\5\3=\3\a\2=\2\23\0015\2\25\0005\3\24\0009\4\1\0=\4\3\0039\4\17\0=\4\5\3=\3\a\2=\2\26\0015\2\28\0005\3\27\0009\4\b\0=\4\3\0039\4\1\0=\4\5\3=\3\a\0025\3\29\0009\4\b\0=\4\3\0039\4\1\0=\4\5\3=\3\v\0025\3\30\0009\4\1\0=\4\3\0039\4\1\0=\4\5\3=\3\r\2=\2\31\0016\2 \0'\4!\0B\2\2\0029\2\"\0025\4'\0005\5#\0=\1$\0055\6%\0=\6&\5=\5(\4B\2\2\1K\0\1\0\foptions\1\0\1\foptions\0\23section_separators\1\0\2\nright\bÓÇ∂\tleft\bÓÇ¥\ntheme\1\0\3\ntheme\0\23section_separators\0\25component_separators\6|\nsetup\flualine\frequire\rinactive\1\0\2\abg\0\afg\0\1\0\2\abg\0\afg\0\1\0\3\6a\0\6c\0\6b\0\1\0\2\abg\0\afg\0\freplace\1\0\1\6a\0\1\0\2\abg\0\afg\0\vvisual\1\0\1\6a\0\tcyan\1\0\2\abg\0\afg\0\vinsert\1\0\1\6a\0\bred\1\0\2\abg\0\afg\0\vnormal\1\0\5\rinactive\0\vnormal\0\vinsert\0\freplace\0\vvisual\0\6c\1\0\2\abg\0\afg\0\6b\tgrey\1\0\2\abg\0\afg\0\nwhite\6a\1\0\3\6a\0\6c\0\6b\0\abg\tblue\afg\1\0\2\abg\0\afg\0\nblack\1\0\a\tblue\f#89b4fa\bred\f#f38ba8\nwhite\f#a6adc8\vviolet\f#b4befe\nblack\f#1e1e2e\tgrey\f#6c7086\tcyan\f#89dceb\0" },
    loaded = true,
    path = "/home/mia/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/mia/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\n¶\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\aui\1\0\1\aui\0\nicons\1\0\1\nicons\0\1\0\3\20package_pending\bÔÇ©\24package_uninstalled\bÔÑå\22package_installed\bÔÅò\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/home/mia/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neo-tree.nvim"] = {
    loaded = true,
    path = "/home/mia/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/mia/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/mia/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/mia/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÑ\2\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\4\14highlight\0\vindent\0\21ensure_installed\0\17auto_install\2\1\4\0\0\blua\trust\ttoml\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/mia/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/mia/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/mia/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/mia/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rose-pine"] = {
    config = { "\27LJ\2\nã\1\0\0\3\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0'\2\6\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\1\0\2\17dark_variant\tmoon\fvariant\tmoon\nsetup\14rose-pine\frequire\0" },
    loaded = true,
    path = "/home/mia/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["rust-tools.nvim"] = {
    config = { "\27LJ\2\n«\1\0\2\b\1\v\0\0236\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\4\0-\6\0\0009\6\5\0069\6\5\0065\a\6\0=\1\a\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\b\0-\6\0\0009\6\t\0069\6\t\0065\a\n\0=\1\a\aB\2\5\1K\0\1\0\0¿\1\0\1\vbuffer\0\22code_action_group\14<Leader>a\vbuffer\1\0\1\vbuffer\0\18hover_actions\14<C-space>\6n\bset\vkeymap\bvim{\1\0\6\0\b\0\f6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\3B\1\2\0012\0\0ÄK\0\1\0\vserver\1\0\1\vserver\0\14on_attach\1\0\1\14on_attach\0\0\nsetup\15rust-tools\frequire\0" },
    loaded = true,
    path = "/home/mia/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["transparent.nvim"] = {
    loaded = true,
    path = "/home/mia/.local/share/nvim/site/pack/packer/start/transparent.nvim",
    url = "https://github.com/xiyaowong/transparent.nvim"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/mia/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\nã\1\0\0\3\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0'\2\6\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\1\0\2\17dark_variant\tmoon\fvariant\tmoon\nsetup\14rose-pine\frequire\0", "config", "rose-pine")
time([[Config for rose-pine]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n∫\6\0\0\a\0)\0N5\0\0\0005\1\14\0005\2\6\0005\3\2\0009\4\1\0=\4\3\0039\4\4\0=\4\5\3=\3\a\0025\3\t\0009\4\b\0=\4\3\0039\4\n\0=\4\5\3=\3\v\0025\3\f\0009\4\1\0=\4\3\0039\4\1\0=\4\5\3=\3\r\2=\2\15\0015\2\18\0005\3\16\0009\4\1\0=\4\3\0039\4\17\0=\4\5\3=\3\a\2=\2\19\0015\2\22\0005\3\20\0009\4\1\0=\4\3\0039\4\21\0=\4\5\3=\3\a\2=\2\23\0015\2\25\0005\3\24\0009\4\1\0=\4\3\0039\4\17\0=\4\5\3=\3\a\2=\2\26\0015\2\28\0005\3\27\0009\4\b\0=\4\3\0039\4\1\0=\4\5\3=\3\a\0025\3\29\0009\4\b\0=\4\3\0039\4\1\0=\4\5\3=\3\v\0025\3\30\0009\4\1\0=\4\3\0039\4\1\0=\4\5\3=\3\r\2=\2\31\0016\2 \0'\4!\0B\2\2\0029\2\"\0025\4'\0005\5#\0=\1$\0055\6%\0=\6&\5=\5(\4B\2\2\1K\0\1\0\foptions\1\0\1\foptions\0\23section_separators\1\0\2\nright\bÓÇ∂\tleft\bÓÇ¥\ntheme\1\0\3\ntheme\0\23section_separators\0\25component_separators\6|\nsetup\flualine\frequire\rinactive\1\0\2\abg\0\afg\0\1\0\2\abg\0\afg\0\1\0\3\6a\0\6c\0\6b\0\1\0\2\abg\0\afg\0\freplace\1\0\1\6a\0\1\0\2\abg\0\afg\0\vvisual\1\0\1\6a\0\tcyan\1\0\2\abg\0\afg\0\vinsert\1\0\1\6a\0\bred\1\0\2\abg\0\afg\0\vnormal\1\0\5\rinactive\0\vnormal\0\vinsert\0\freplace\0\vvisual\0\6c\1\0\2\abg\0\afg\0\6b\tgrey\1\0\2\abg\0\afg\0\nwhite\6a\1\0\3\6a\0\6c\0\6b\0\abg\tblue\afg\1\0\2\abg\0\afg\0\nblack\1\0\a\tblue\f#89b4fa\bred\f#f38ba8\nwhite\f#a6adc8\vviolet\f#b4befe\nblack\f#1e1e2e\tgrey\f#6c7086\tcyan\f#89dceb\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n¶\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\aui\1\0\1\aui\0\nicons\1\0\1\nicons\0\1\0\3\20package_pending\bÔÇ©\24package_uninstalled\bÔÑå\22package_installed\bÔÅò\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: rust-tools.nvim
time([[Config for rust-tools.nvim]], true)
try_loadstring("\27LJ\2\n«\1\0\2\b\1\v\0\0236\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\4\0-\6\0\0009\6\5\0069\6\5\0065\a\6\0=\1\a\aB\2\5\0016\2\0\0009\2\1\0029\2\2\2'\4\3\0'\5\b\0-\6\0\0009\6\t\0069\6\t\0065\a\n\0=\1\a\aB\2\5\1K\0\1\0\0¿\1\0\1\vbuffer\0\22code_action_group\14<Leader>a\vbuffer\1\0\1\vbuffer\0\18hover_actions\14<C-space>\6n\bset\vkeymap\bvim{\1\0\6\0\b\0\f6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\3B\1\2\0012\0\0ÄK\0\1\0\vserver\1\0\1\vserver\0\14on_attach\1\0\1\14on_attach\0\0\nsetup\15rust-tools\frequire\0", "config", "rust-tools.nvim")
time([[Config for rust-tools.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÑ\2\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\4\14highlight\0\vindent\0\21ensure_installed\0\17auto_install\2\1\4\0\0\blua\trust\ttoml\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
