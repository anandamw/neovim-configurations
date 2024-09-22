require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
	ensure_installed = { "html", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "css", "php", "js", "json"},

      highlight = {
    	enable = true,
    	additional_vim_regex_highlighting = false,
      },

  }
