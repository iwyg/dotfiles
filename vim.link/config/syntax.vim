augroup ft_syntax
	autocmd!
	" underscore templates:	
	autocmd BufNewFile,BufRead *.php setlocal syntax=php
	autocmd BufNewFile,BufRead *.jst setlocal syntax=jst
	autocmd BufNewFile,BufRead *.tpl setlocal syntax=jst
	" objectiveJ: 	
	"autocmd BufNewFile,BufRead *.j setlocal syntax=objj
augroup END
