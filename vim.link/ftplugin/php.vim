""" formatting {{{
setlocal tabstop=4 
setlocal softtabstop=4 
setlocal shiftwidth=4 

setlocal expandtab
setlocal smarttab
setlocal autoindent

setlocal formatoptions=n1croqb
"""}}}

""" Plugins {{{
""" Padawan: {{{
let g:padawan#composer_command = $COMPOSER_BIN
"""}}}

""" PHPcomplete: {{{
""" Enables use of tags when the plugin tries to find variables. 
""" When enabled the plugin will search for the variables in the tag files with kind 'v', 
""" lines like $some_var = new Foo; but these usually yield highly inaccurate results and can be fairly slow.
let g:phpcomplete_search_tags_for_variables = 0

""" When enabled the preview window's content will include information extracted from 
""" docblock comments of the completions. Enabling this option will add return types to the 
""" completion menu for functions too.
let g:phpcomplete_parse_docblock_comments = 1

""" When enabled the taglist() lookups will be cached and subsequent searches for the same pattern will 
""" not check the tagfiles any more, thus making the lookups faster. Cache expiration is based on 
""" the mtimes of the tag files.
let g:phpcomplete_cache_taglists = 1

""" This option controls the number of characters the user needs to type before the tags will be searched 
""" for namespaces and classes in typed out namespaces in "use ..." context. Setting this to 0 is not 
""" recommended because that means the code have to scan every tag, and vim's taglist() function runs 
""" extremly slow with a "match everything" pattern.
let g:phpcomplete_min_num_of_chars_for_namespace_completion = 2

""" When enabled the <C-]> will be mapped to phpcomplete#JumpToDefinition() which will try to make a more 
""" educated guess of the current symbol's location than simple tag search. If the symbol's location cannot 
""" be found the original <C-]> functionality will be invoked
let g:phpcomplete_enhance_jump_to_definition = 1

let g:phpcomplete_mappings = {
			\ 'jump_to_def': '<C-ü>',
			\ }
"""}}}

"" PHP Pdv: {{{
let g:pdv_template_dir = $HOME ."/.vim/tools/pdv_templates"

"au FileType php nnoremap <leader>doc :call pdv#DocumentWithSnip()<CR>
nnoremap <buffer> <leader>doc :call pdv#DocumentWithSnip()<CR><Paste>


""" PHPCSFixer: {{{
""" define the path to the php-cs-fixer.phar
let g:php_cs_fixer_path = "~/.composer/vendor/bin/php-cs-fixer" 
""" fixer standard
let g:php_cs_fixer_level = "psr2"                               
let g:php_cs_fixer_config = "default"                           
let g:php_cs_fixer_php_path = "/usr/local/bin/php"              
""" List of fixers
let g:php_cs_fixer_fixers_list = ""                             
""" Enable the mapping by default (<leader>pcd) 
let g:php_cs_fixer_enable_default_mapping = 1                   
""" Call command with dry-run option
let g:php_cs_fixer_dry_run = 0                                  
let g:php_cs_fixer_verbose = 1

""" call PHPCSFixer on current directory:
nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
""" call PHPCSFixer on current buffer:
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>
"""}}}

""" PHPFolding: {{{
let php_folding=0

map <F5> <Esc>:EnableFastPHPFolds<Cr>
map <F6> <Esc>:EnablePHPFolds<Cr>
map <F7> <Esc>:DisablePHPFolds<Cr>
""" disable auto folding
let g:DisableAutoPHPFolding = 1
"""}}}

""" PHP Namespace: {{{
"Expands the class name under the cursor to its fully qualified name in insert mode:
inoremap <Leader>e <C-O>:call PhpExpandClass()<CR>
"Expands the class name under the cursor to its fully qualified name in normale:
noremap <Leader>e :call PhpExpandClass()<CR>

"Automatically adds the corresponding use statement for the class under the cursor in insert mode:
inoremap <Leader>un <C-O>:call PhpInsertUse()<CR>
"Automatically adds the corresponding use statement for the class under the cursor in normal mode:
noremap <Leader>un :call PhpInsertUse()<CR>
"""}}}

""" PHPNamespace: {{{
nnoremap <silent><leader>nsi :call PhpNamespaceInsert()<CR>
inoremap <silent><leader>nsg :call PhpNamespaceGet()<CR>
"""}}}

let g:phpunit_namespace_prefix='Tests'
let g:phpunitpath='vendor/bin/phpunit'

nnoremap <silent><leader>pug :call PhpunitGenerate()<CR>
nnoremap <silent><leader>pur :call PhpunitRun()<CR>
"""}}}

""" VimTest: {{{
let test#php#phpunit#executable = '. ~/.dotfiles/bin/php ./vendor/bin/phpunit'
"""}}}

""" YCM: {{{
"""" Helps with language specific completion
if !exists('g:ycm_semantic_triggers')
	let g:ycm_semantic_triggers = {}
endif

let g:ycm_semantic_triggers.php = ['->', '::']
"""}}}

""" XDEBUG: {{{
let g:dbgWaitTime = 30
"""}}}

""" Tagbar: {{{
let g:tagbar_type_php = {
			\ 'ctagstype' : 'php',
			\ 'ctagsbin' : 'ctags',
			\ 'ctagsargs': '-R --fields=+aimS -f -',
			\ 'kinds'     : [
			\ 'd:Constants:0:0',
			\ 'v:Variables:0:0',
			\ 'f:Functions:1',
			\ 'i:Interfaces:0',
			\ 'c:Classes:0',
			\ 'p:Properties:0:0',
			\ 'm:Methods:0:0',
			\ 'n:Namespaces:0',
			\ 't:Traits:0',
			\ ],
			\ 'sro'        : '::',
			\ 'kind2scope' : {
			\ 'c' : 'class',
			\ 'm' : 'method',
			\ 'f' : 'function',
			\ 'i' : 'interface',
			\ 'n' : 'namespace',
			\ 't' : 'trait',
			\ },
			\ 'scope2kind' : {
			\ 'class'     : 'c',
			\ 'method'    : 'm',
			\ 'function'  : 'f',
			\ 'interface' : 'i',
			\ 'namespace' : 'n',
			\ 'trait'     : 't',
			\ }
			\ }
"""}}}
"""}}}
