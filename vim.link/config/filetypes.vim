" Enable file type detection
augroup ft_assignment
	" sass and less css sytax:
	"autocmd BufNewFile,BufRead *.less       setlocal ft=less
	"autocmd BufNewFile,BufRead *.scss       setlocal ft=scss
	"autocmd BufNewFile,BufRead *.sass       setlocal ft=sass
	"autocmd BufNewFile,BufRead *.ts         setlocal ft=typescript
	"autocmd BufRead,BufNewFile *.dart       setlocal ft=dart
	"autocmd BufRead,BufNewFile *.{php,phar} setlocal ft=php
	"autocmd BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} setlocal ft=markdown
	"autocmd BufRead,BufNewFile .*{rc} setlocal ft=sh
	"autocmd BufRead,BufNewFile *.{jshintrc,*rc} setlocal ft=rc
	"autocmd BufNewFile,BufRead *rc,*.profile setlocal ft=sh
	"autocmd BufRead,BufNewFile *.{vimrc,gvimrc} setlocal ft=vim

	""	autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
	"" typoscript:
	""	autocmd BufNewFile,BufRead mozex.textarea.* setlocal ft=typoscript
	""	autocmd BufNewFile,BufRead *.ts setlocal ft=typoscript 	

	""autocmd BufRead,BufNewFile *.twig       setlocal ft=htmljinja
	""autocmd BufRead,BufNewFile *.twig       setlocal ft=twig

	"autocmd BufNewFile,BufRead *.plist setlocal ft=plist
	"autocmd BufNewFile,BufRead *.rst setlocal ft=rust
	"autocmd BufNewFile,BufRead *.go setlocal ft=go
	"autocmd BufNewFile,BufRead *.groovy setlocal ft=groovy
	"autocmd BufNewFile,BufRead *.ex setlocal ft=elixir
	"autocmd BufNewFile,BufRead *.objc setlocal ft=objc
	"autocmd BufNewFile,BufRead *.switf setlocal ft=swift
	"autocmd BufNewFile,BufRead *.elm setlocal ft=elm
	"autocmd BufNewFile,BufRead *.dart setlocal ft=dart

	" Treat .rss and .atom feeds as xml
	autocmd BufNewFile,BufRead *.rss,*.atom setlocal ft=xml
	" Treat .std template files as php
	autocmd BufNewFile,BufRead *.std setlocal ft=php
	autocmd BufRead,BufNewFile *.handlebars setlocal ft=html
	" smarty:	
	autocmd BufNewFile,BufRead *.tpl setlocal ft=smarty 	
"""}}}
augroup END

""" omnicompletion {{{
"augroup ft_completion
"	 autocmd!
"    """ Html {{{
"    autocmd FileType html,htmljinja             setlocal omnifunc=htmlcomplete#CompleteTags
"    autocmd FileType smarty,markdown,blade      setlocal omnifunc=htmlcomplete#CompleteTags
"    """}}}
"    autocmd FileType css                        setlocal omnifunc=csscomplete#CompleteCSS
"    autocmd FileType scss,sass,less             setlocal omnifunc=csscomplete#CompleteCSS
"    """ javascript {{{
"    autocmd FileType javascript                 setlocal omnifunc=javascriptcomplete#CompleteJS
"    autocmd FileType typescript                 setlocal omnifunc=javascriptcomplete#CompleteJS
"    autocmd FileType html                       setlocal omnifunc=javascriptcomplete#CompleteJS
"    """}}}
"    """ Python {{{
"    autocmd FileType python                     setlocal omnifunc=pythoncomplete#Complete
"    """}}}
"    autocmd FileType xml                        setlocal omnifunc=xmlcomplete#CompleteTags
"    autocmd FileType xsl                        setlocal omnifunc=xmlcomplete#CompleteTags
"    autocmd FileType xslt                       setlocal omnifunc=xmlcomplete#CompleteTags
"    autocmd FileType ruby                       setlocal omnifunc=rubycomplete#Complete
"    """ Php {{{
"    autocmd FileType blade                      setlocal omnifunc=phpcomplete#CompletePHP
"    autocmd FileType twig                       setlocal omnifunc=phpcomplete#CompletePHP
"    autocmd FileType php                        setlocal omnifunc=phpcomplete#CompletePHP
"    autocmd FileType vim                        setlocal omnifunc=vimcomplete#CompleteVIM
"    """}}}
"augroup END
"""}}}

""" Indentation {{{
" Syntax of these languages is fussy over tabs Vs spaces
augroup ft_indentation
	autocmd!
    autocmd FileType make                  setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType Dockerfile            setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType html,xhtml,htmljinja  setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType twig,blade,smarty     setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType css                   setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType scss                  setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType sass                  setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType xml                   setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType less                  setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType xslt                  setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType std                   setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType json                  setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType blade                 setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType toml                  setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType yaml                  setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType py                    setlocal ts=8 sts=4 sw=4 expandtab
    autocmd FileType sh,zsh,bash           setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType rcshell               setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType php                   setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType javascript            setlocal ts=2 sts=2 sw=2 expandtab
augroup END
"""}}}

""" Filetypes {{{
augroup ft_mappings
	autocmd!
    "strip trailing space on buffer save
    autocmd BufWritePre *.py,*,php,*.js,*.xsl,*.html,*.xml,*.css,*.less :call StripTrailingWhitespaces()
    " Manual Mapping:   
    "au! BufReadPost *.php  set keywordprg=pman
    autocmd BufReadPost *.vim  map K :exe ":help ".expand("<cword>")<CR>
    autocmd BufReadPost .vimrc map K :exe ":help ".expand("<cword>")<CR>
augroup END
