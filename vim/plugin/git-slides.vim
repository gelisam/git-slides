:nmap <Space> :w<CR>:call system("git-slides next")<CR>:e!<CR>
:nmap <Backspace> :w<CR>:call system("git-slides prev")<CR>:e!<CR>
:nmap sl :w<CR>:call system("git-slides next")<CR>:e!<CR>
:nmap sh :w<CR>:call system("git-slides prev")<CR>:e!<CR>
:nmap sL :call system("git-slides next -f")<CR>:e!<CR>
:nmap sH :call system("git-slides prev -f")<CR>:e!<CR>
:nmap ss :w<CR>:call system("git-slides save")<CR>:e!<CR>
:nmap si :w<CR>:call system("git-slides insert")<CR>:e!<CR>
:nmap st :w<CR>:call system("git-slides transform")<CR>:e!<CR>
:nmap sx :w<CR>:call system("git-slides delete")<CR>:e!<CR>
