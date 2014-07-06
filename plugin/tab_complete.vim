function! s:Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction

 "Autocomplete code
inoremap <Tab> <C-R>=<SID>Tab_Or_Complete()<CR>
set dictionary="/usr/dict/words"
set complete-=i
