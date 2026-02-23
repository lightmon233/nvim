require'nvim-treesitter'.setup {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  install_dir = vim.fn.stdpath('data') .. '/site'
}

require'nvim-treesitter'.install {
    'vim', 'vimdoc', 'bash', 'c', 'cpp', 'javascript', 'json', 'lua', 'python', 'typescript', 'tsx', 'css', 'rust', 'markdown', 'markdown_inline'
}
