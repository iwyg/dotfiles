" Enable file type detection
augroup ft_assignment
	autocmd BufNewFile,BufRead *rc,*.profile              setlocal ft=sh
	autocmd BufRead,BufNewFile *.{vimrc,gvimrc}           setlocal ft=vim
	" Treat .rss and .atom feeds as xml
	autocmd BufNewFile,BufRead *.rss,*.atom               setlocal ft=xml
	autocmd BufRead,BufNewFile *.handlebars               setlocal ft=html
	" Treat .std template files as php
	autocmd BufNewFile,BufRead *.std                      setlocal ft=php
	" smarty:
	autocmd BufNewFile,BufRead *.tpl                      setlocal ft=smarty
	autocmd BufNewFile,BufRead *.phpml                 setlocal ft=php.html
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
	autocmd FileType php.html              setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType markdown              setlocal ts=4 sts=4 sw=4 expandtab
	autocmd FileType vim                   setlocal ts=4 sts=4 sw=4 expandtab
augroup END
"""}}}

""" Filetypes {{{
augroup ft_mappings
	autocmd!
    "strip trailing space on buffer save
	"autocmd BufWritePre *.py,*,php,*.js,*.jsx,*.xsl,*.html,*.xml,*.css,*.less :call StripTrailingWhitespaces()
    " Manual Mapping:
    "au! BufReadPost *.php  set keywordprg=pman
    autocmd BufReadPost *.vim  map K :exe ":help ".expand("<cword>")<CR>
    autocmd BufReadPost .vimrc map K :exe ":help ".expand("<cword>")<CR>
augroup END


augroup html
    autocmd!
	autocmd FileType html setlocal autoindent smarttab smartindent smartcase nofoldenable fdm=indent
augroup END

augroup xml
    autocmd!
	autocmd FileType xml setlocal autoindent smarttab smartindent smartcase nofoldenable fdm=indent
augroup END

augroup php
    autocmd!
	autocmd FileType php setlocal autoindent smarttab smartindent smartcase nofoldenable fdm=indent
augroup END

augroup jsx
    autocmd!
	autocmd FileType jsx setlocal autoindent smarttab smartindent smartcase nofoldenable
augroup END

augroup js
    autocmd!
	autocmd FileType javascript setlocal autoindent smarttab smartindent smartcase nofoldenable
augroup END

" prevent beeps for entering ">" chars
augroup php_matches
	autocmd!
	autocmd BufNewFile,BufRead *.php setlocal noshowmatch matchpairs-=<:>
augroup END

augroup js_matches
	autocmd!
	autocmd BufNewFile,BufRead *.js,*.jsx setlocal noshowmatch
augroup END
