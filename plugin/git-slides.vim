:nmap <Space> :wa<CR>:call system("git-slides next")<CR>:e!<CR>
:nmap <Backspace> :wa<CR>:call system("git-slides prev")<CR>:e!<CR>
:nmap sl :wa<CR>:call system("git-slides next")<CR>:e!<CR>
:nmap sh :wa<CR>:call system("git-slides prev")<CR>:e!<CR>
:nmap sL :call system("git-slides next -f")<CR>:e!<CR>
:nmap sH :call system("git-slides prev -f")<CR>:e!<CR>
:nmap ss :wa<CR>:call system("git-slides save")<CR>:e!<CR>
:nmap sb :wa<CR>:call system("git-slides insert-before")<CR>:e!<CR>
:nmap sa :wa<CR>:call system("git-slides insert-after")<CR>:e!<CR>
:nmap st :wa<CR>:call system("git-slides transform")<CR>:e!<CR>
:nmap sd :wa<CR>:call system("git-slides delete")<CR>:e!<CR>
:nmap sr :!./%<CR>
