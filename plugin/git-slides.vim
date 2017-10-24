" Vim global plugin for interfacing with git-slides

if !get(g:, 'gitslides_use_custom_mappings')
  let g:gitslides_use_custom_mappings = 0
endif

if !g:gitslides_use_custom_mappings
  nnoremap <Backspace> :wa<CR>:call system("git-slides prev")<CR>:e!<CR>
  nnoremap <Space> :wa<CR>:call system("git-slides next")<CR>:e!<CR>
  nnoremap sl :wa<CR>:call system("git-slides next")<CR>:e!<CR>
  nnoremap sh :wa<CR>:call system("git-slides prev")<CR>:e!<CR>
  nnoremap sL :call system("git-slides next -f")<CR>:e!<CR>
  nnoremap sH :call system("git-slides prev -f")<CR>:e!<CR>
  nnoremap ss :wa<CR>:call system("git-slides save")<CR>:e!<CR>
  nnoremap sb :wa<CR>:call system("git-slides insert-before")<CR>:e!<CR>
  nnoremap sa :wa<CR>:call system("git-slides insert-after")<CR>:e!<CR>
  nnoremap st :wa<CR>:call system("git-slides transform")<CR>:e!<CR>
  nnoremap sd :wa<CR>:call system("git-slides delete")<CR>:e!<CR>
  nnoremap sr :!./%<CR>
endif

