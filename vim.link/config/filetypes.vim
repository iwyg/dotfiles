" Enable file type detection
filetype on

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
augroup indentation
	autocmd!
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

    " Customisations based on house-style (arbitrary)
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
    autocmd FileType py                    setlocal ts=8 sts=4 sw=4 expandtab
    autocmd FileType sh,zsh,bash           setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType rcshell               setlocal ts=4 sts=4 sw=4 expandtab
    """}}}
augroup END

""" Filetypes {{{
augroup ft_mappings
	autocmd!

    " strip trailing space on buffer save
    "autocmd BufWritePre *.py,*.js,*.xsl,*.html,*.php,*.xml,*.css,*.less :call <SID>StripTrailingWhitespaces()
    autocmd BufWritePre *.py,*.js,*.xsl,*.html,*.php,*.xml,*.css,*.less :call StripTrailingWhitespaces()
    " Manual Mapping:   
    "au! BufReadPost *.php  set keywordprg=pman
    autocmd BufReadPost *.vim  map K :exe ":help ".expand("<cword>")<CR>
    autocmd BufReadPost .vimrc map K :exe ":help ".expand("<cword>")<CR>
    
augroup END
"""}}}
