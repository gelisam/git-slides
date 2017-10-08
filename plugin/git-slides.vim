" Vim global plugin for interfacing with git-slides

if !get(g:, 'gitslides_use_custom_mappings')
  let g:gitslides_use_custom_mappings = 0
endif

nnoremap <silent> <Plug>GitSlidesNext :wa<CR>:call system("git-slides next")<CR>:e!<CR>
nnoremap <silent> <Plug>GitSlidesPrevious :wa<CR>:call system("git-slides prev")<CR>:e!<CR>
nnoremap <silent> <Plug>GitSlidesNextForce :call system("git-slides next -f")<CR>:e!<CR>
nnoremap <silent> <Plug>GitSildesPreviousForce :call system("git-slides prev -f")<CR>:e!<CR>
nnoremap <silent> <Plug>GitSlidesSave :wa<CR>:call system("git-slides save")<CR>:e!<CR>
nnoremap <silent> <Plug>GitSlidesInsertBefore :wa<CR>:call system("git-slides insert-before")<CR>:e!<CR>
nnoremap <silent> <Plug>GitSlidesInsertAfter :wa<CR>:call system("git-slides insert-after")<CR>:e!<CR>
nnoremap <silent> <Plug>GitSlidesTransform :wa<CR>:call system("git-slides transform")<CR>:e!<CR>
nnoremap <silent> <Plug>GitSlidesDelete :wa<CR>:call system("git-slides delete")<CR>:e!<CR>
nnoremap <silent> <Plug>GitSlidesExecute :!./%<CR>

if !g:gitslides_use_custom_mappings
  nmap <Space> <Plug>GitSlidesNext
  nmap <Backspace> <Plug>GitSlidesPrevious
  nmap sl <Plug>GitSlidesNext
  nmap sh <Plug>GitSlidesPrevious
  nmap sL <Plug>GitSlidesNextForce
  nmap sH <Plug>GitSildesPreviousForce
  nmap ss <Plug>GitSlidesSave
  nmap sb <Plug>GitSlidesInsertBefore
  nmap sa <Plug>GitSlidesInsertAfter
  nmap st <Plug>GitSlidesTransform
  nmap sd <Plug>GitSlidesDelete
  nmap sr <Plug>GitSlidesExecute
endif

