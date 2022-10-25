local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  ensure_installed = {"python", "rust", "lua", "bash", "julia", "r"},
  sync_install = false,
  autopairs = {
      enable = true,
  },
  highlight = {
    enable = true,
    disable = {""}, -- list of languages to ignore
    additional_vim_regex_highlighting = true,
    indent = { enable = true, disable = { "python"} },
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
},
}

