:nmap <Space> :w<CR>:call system("git-slides next")<CR>:e!<CR>
:nmap <Backspace> :w<CR>:call system("git-slides prev")<CR>:e!<CR>
:nmap <S-L> :call system("git-slides next -f")<CR>:e!<CR>
:nmap <S-H> :call system("git-slides prev -f")<CR>:e!<CR>
