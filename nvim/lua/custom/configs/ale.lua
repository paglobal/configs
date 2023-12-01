vim.cmd([[
  " Only run linters named in ale_linters settings.
  let g:ale_linters_explicit = 1
  let g:ale_fix_on_save = 1
  let g:ale_disable_lsp = 'auto'
  let g:ale_use_neovim_diagnostics_api = 1
  let g:ale_set_highlights = 0

  " Make sure this is always at par with the ALE config in `plugins.lua`.
  let g:ale_fixers = {
  \   '*': ['remove_trailing_lines', 'trim_whitespace'],
  \   'astro': ['prettier'],
  \   'css': ['prettier', 'stylelint'],
  \   'html': ['prettier'],
  \   'javascript': ['prettier'],
  \   'javascriptreact': ['prettier', 'eslint'],
  \   'json': ['prettier'],
  \   'jsonc': ['prettier'],
  \   'markdown': ['prettier'],
  \   'typescript': ['prettier'],
  \   'typescriptreact': ['prettier', 'eslint'],
  \}
]])
