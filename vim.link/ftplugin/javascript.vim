""" formatting
setlocal tabstop=2 
setlocal softtabstop=2 
setlocal shiftwidth=2 
setlocal expandtab
setlocal smarttab
setlocal autoindent
setlocal formatoptions=croql

let javascript_enable_domhtmlcss = 1
let javascript_ignore_javaScriptdoc = 0

""" plugins

""" JsDoc: {{{
""" allow es6 syntax
let g:jsdoc_enable_es6 = 1
""" promt for interfactive input
let g:jsdoc_allow_input_prompt = 1
"""}}}


""" Tagbar: {{{
let g:tagbar_type_javascript = {
            \ 'ctagsbin' : 'jsctags'
            \ }
"""}}}
