nnoremap <c-f> :call OpenFloatTerm()<CR>
function! OpenFloatTerm() 
	let height = float2nr((&lines - 2) / 1.5) 
	let row = float2nr((&lines - height) / 2) 
	let width = float2nr(&columns / 1.5) 
	let col = float2nr((&columns - width) / 2) 
	" Border Window 
	let border_opts = { 'relative': 'editor', 'row': row - 1, 'col': col - 2, 'width': width + 4, 'height': height + 2, 'style': 'minimal' } 
	let border_buf = nvim_create_buf(v:false, v:true) 
	let s:border_win = nvim_open_win(border_buf, v:true, border_opts) " Main Window 
	let opts = { 'relative': 'editor', 'row': row, 'col': col, 'width': width, 'height': height, 'style': 'minimal' } 
	let buf = nvim_create_buf(v:false, v:true) 
	let win = nvim_open_win(buf, v:true, opts)
	terminal 
	:startinsert
	" Hook up TermClose event to close both terminal and border windows 
	autocmd TermClose * ++once :q! | call nvim_win_close(s:border_win, v:true) 
endfunction

function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

nnoremap <silent> <C-h> :call WinMove('h')<CR>
nnoremap <silent> <C-j> :call WinMove('j')<CR>
nnoremap <silent> <C-k> :call WinMove('k')<CR>
nnoremap <silent> <C-l> :call WinMove('l')<CR>

let g:term_buf = 0
function! Term_toggle()
  1wincmd w
  if g:term_buf == bufnr("")
    setlocal bufhidden=hide
    close
  else
    topleft vnew
    try
      exec "buffer ".g:term_buf
    catch
      call termopen("powershell", {"detach": 0})
      let g:term_buf = bufnr("")
    endtry
    startinsert!
  endif
endfunction
nnoremap <f4> :call Term_toggle()<cr>
