local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end


local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
	return
end

local kind_icons = {
	Text = "",
	Method = "",
	Function = "",
	Constructor = "",
	Field = "",
	Variable = "",
	Class = "",
	Interface = "",
	Module = "",
	Property = "",
	Unit = "",
	Value = "",
	Enum = "",
	Keyword = "",
	Snippet = "",
	Color = "",
	File = "",
	Reference = "",
	Folder = "",
	EnumMember = "",
	Constant = "",
	Struct = "",
	Event = "",
	Operator = "",
	TypeParameter = "",
}

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    --['<C-p>'] = cmp.mapping.select_prev_item(),
    --['<C-n>'] = cmp.mapping.select_next_item(),
    --['<C-d>'] = cmp.mapping.scroll_docs(-4),
    --['<C-f>'] = cmp.mapping.scroll_docs(4),
    --['<C-Space>'] = cmp.mapping.complete(),
    ['<Esc>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm{
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
        if not has_words_before() then
            fallback()
        elseif cmp.visible() then
            cmp.select_next_item()
        elseif luasnip.expandable() then
            luasnip.expand()
        elseif has_words_before() and luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
        else
            fallback()
        end
    end, { "i", "s" }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {"i", "s"}),
  },
  formatting = {
		fields = { "kind", "abbr", "menu" },
		format = function(entry, vim_item)
			vim_item.kind = kind_icons[vim_item.kind]
			vim_item.menu = ({
				nvim_lsp = "[LSP]",
				nvim_lua = "[NVIM LUA]",
				luasnip = "[Snippet]",
				buffer = "[buffer]",
				path = "[path]",
				emoji = "",
			})[entry.source.name]
			return vim_item
		end,
	},
  sources = {
    { name = 'nvim_lsp' },
    { name = 'nvim_lua' },
    { name = 'luasnip' },
    { name = "buffer" },
    { name = "path" },
    { name = 'cmdline' },
  },
  confirm_opts = {
      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
  },
  window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
  },
}

