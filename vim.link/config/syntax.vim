augroup ft_syntax
	autocmd!
	" sass and less css sytax:
	autocmd BufNewFile,BufRead *.less       setlocal ft=less
	autocmd BufNewFile,BufRead *.scss       setlocal ft=scss
	autocmd BufNewFile,BufRead *.sass       setlocal ft=sass
	" Typescript And Dart:
	autocmd BufNewFile,BufRead *.ts         setlocal ft=typescript
	autocmd BufRead,BufNewFile *.dart       setlocal ft=dart
	" PHP: 
	"autocmd BufRead,BufNewFile *.{php,phar} setlocal ft=php
	" md, markdown, and mk are markdown and define buffer-local preview
	"-------------------------------------------------------------------------------------
	autocmd BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} setlocal ft=markdown
	autocmd BufRead,BufNewFile .*{rc} setlocal ft=sh
	"autocmd BufRead,BufNewFile *.{jshintrc,*rc} setlocal ft=rc
	autocmd BufNewFile,BufRead *rc,*.profile setlocal ft=sh
	autocmd BufRead,BufNewFile *.{vimrc,gvimrc} setlocal ft=vim

	"" Json:
	""-------------------------------------------------------------------------------------
	""autocmd BufNewFile,BufRead *.json setlocal ft=javascript

	""	autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
	"" typoscript:
	""	autocmd BufNewFile,BufRead mozex.textarea.* setlocal ft=typoscript
	""	autocmd BufNewFile,BufRead *.ts setlocal ft=typoscript 	
	"" templateing:
	""autocmd BufRead,BufNewFile *.twig       setlocal ft=htmljinja
	""autocmd BufRead,BufNewFile *.twig       setlocal ft=twig
	autocmd BufRead,BufNewFile *.handlebars setlocal ft=html
	" smarty:	
	autocmd BufNewFile,BufRead *.tpl setlocal ft=smarty 	
	" underscore templates:	
	autocmd BufNewFile,BufRead *.jst setlocal syntax=jst
	autocmd BufNewFile,BufRead *.tpl setlocal syntax=jst
	" objectiveJ: 	
	autocmd BufNewFile,BufRead *.j setlocal syntax=objj

	autocmd BufNewFile,BufRead *.plist setlocal ft=plist
	autocmd BufNewFile,BufRead *.rst setlocal ft=rust
	autocmd BufNewFile,BufRead *.go setlocal ft=go
	autocmd BufNewFile,BufRead *.groovy setlocal ft=groovy
	autocmd BufNewFile,BufRead *.ex setlocal ft=elixir
	autocmd BufNewFile,BufRead *.j setlocal ft=objj
	autocmd BufNewFile,BufRead *.objc setlocal ft=objc
	autocmd BufNewFile,BufRead *.switf setlocal ft=swift
	autocmd BufNewFile,BufRead *.elm setlocal ft=elm
	autocmd BufNewFile,BufRead *.dart setlocal ft=dart

	"" Treat .rss and .atom feeds as xml
	"autocmd BufNewFile,BufRead *.rss,*.atom setlocal ft=xml
	"" Treat .std template files as php
	"autocmd BufNewFile,BufRead *.std setlocal ft=php

	"autocmd BufWritePost *.php !phpctags %s &
	"autocmd VimEnter * NERDTree
augroup END
