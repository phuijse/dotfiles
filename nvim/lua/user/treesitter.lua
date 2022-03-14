local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  ensure_installed = "maintained",
  sync_install = false,
  autopairs = {
      enable = true,
  },
  highlight = {
    enable = true,
    disable = {""}, -- list of languages to ignore
    additional_vim_regex_highlighting = true,
  },
}

