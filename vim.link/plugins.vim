""" Vim Ariline: {{{
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"""}}}
""" ColorV: {{{
"Plug 'vim-scripts/colorv.vim'
"""}}}
""" Goyo: {{{
Plug 'junegunn/goyo.vim'
"""}}}
""" Limelight: {{{
Plug 'junegunn/limelight.vim'
"""}}}
""" Vim Autocorrect: {{{
"Plug 'panozzaj/vim-autocorrect'
"""}}}
""" Vim Better Whitespace: {{{
Plug 'ntpeters/vim-better-whitespace'
"""}}}
""" Vim Multiple Cursors: {{{
Plug 'terryma/vim-multiple-cursors'
"""}}}
""" Vim Test: {{{
Plug 'janko-m/vim-test'
"""}}}
""" Vim Quickrun: {{{
"Plug 'thinca/vim-quickrun'
"""}}}
""" Vim SourceExplorer: {{{
"Plug 'wesleyche/SrcExpl'
"""}}}
""" Vim RainbowParentheses: {{{
Plug 'vim-scripts/rainbow_parentheses.vim'
"""}}}
""" Vim Tagbar: {{{
Plug 'majutsushi/tagbar'
"""}}}
""" Vim Tlib: {{{
Plug 'tomtom/tlib_vim'
"""}}}
""" Vim Tabular: {{{
"Plug 'godlygeek/tabular'
"""}}}
""" Vim Gundo: {{{
"Plug 'sjl/gundo.vim'
" Gundo fork with neovim compatibility
" @see https://github.com/sjl/gundo.vim/pull/30
Plug 'simnalamburt/vim-mundo'
"""}}}
""" Vim Gundo: {{{
"Plug 'sjl/gundo.vim'
"""}}}
""" VimFiler: {{{
Plug 'Shougo/vimfiler.vim'
"""}}}
""" VimShell: {{{
Plug 'Shougo/vimshell.vim'
"""}}}
""" Vimux: {{{
Plug 'benmills/vimux'
"""}}}
""" Vdebug: {{{
Plug 'joonty/vdebug'
"""}}}
""" Vim Ack: {{{
"Plug 'mileszs/ack.vim'
Plug 'mhinz/vim-grepper'
Plug 'wincent/ferret'
"""}}}
""" Vim Follow My Lead: {{{
"Plug 'ktonga/vim-follow-my-lead'
"""}}}
""" NeoMRU: {{{
Plug 'Shougo/neomru.vim'
"""}}}
""" NeoMake: {{{
Plug 'benekastah/neomake', { 'do' : '. $HOME/.vim/bin/vim_postinstall_neomake.sh' }
"""}}}
""" Emmet: {{{
Plug 'mattn/emmet-vim'
"""}}}
""" NerdCommenter: {{{
Plug 'scrooloose/nerdcommenter'
"""}}}
""" Vim Fugitive: {{{
Plug 'tpope/vim-fugitive'
"""}}}
""" Vim GitGutter: {{{
Plug 'airblade/vim-gitgutter'
"""}}}
""" Vim Surround: {{{
Plug 'tpope/vim-surround'
"""}}}
""" Auto Pairs: {{{
Plug 'raimondi/delimitMate'
"""}}}
""" Vim Vinegar: {{{
Plug 'tpope/vim-vinegar'
"""}}}
""" Vim Dispatch: {{{
Plug 'tpope/vim-dispatch'
"""}}}
""" Vim Ultisnips: {{{
Plug 'SirVer/ultisnips'
"""}}}
"""" Vim EasyTags: {{{
Plug 'xolox/vim-easytags' | Plug 'xolox/vim-misc'
""""}}}
""" Unite: {{{
Plug 'Shougo/unite.vim'
"""}}}
""" Proc: {{{
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
"""}}}
""" Local Vimrc: {{{
Plug 'MarcWeber/vim-addon-local-vimrc'
"""}}}
""" Matchit: {{{
"Plug 'vim-scripts/matchit.zip'
"""}}}
""" SudoVim: {{{
Plug 'vim-scripts/sudo.vim'
"""}}}
""" SudoEdit: {{{
"Plug 'chrisbra/SudoEdit.vim'
"""}}}
""" Syntastic: {{{
"Plug 'scrooloose/syntastic'
"""}}}
""" SyntaxComplete: {{{
"Plug 'vim-scripts/SyntaxComplete'
"""}}}
""" YouCompleteMe: {{{
Plug'Valloric/YouCompleteMe', { 'do': '. $HOME/.vim/bin/vim_postinstall_ycm.sh' }
"""}}}

""" NeoComplete: {{{
"Plug 'Shougo/neocomplete.vim'
"""}}}
""" DeoPlete: {{{
" Like NeoComplete but for neovim
"Plug 'Shougo/deoplete.nvim'
"""}}}

"" Snippets {{{
Plug 'honza/vim-snippets'
Plug 'justinj/vim-react-snippets', { 'for': 'javascript' }
""}}}
"" Languages {{{
""" Dart: {{{
"Plug 'bartlomiejdanek/vim-dart', { 'for': 'dart' }
"""}}}
""" Docker: {{{
Plug 'ekalinin/Dockerfile.vim'
"""}}}
""" Elixir: {{{
"Plug 'elixir-lang/vim-elixir', { 'for': 'ex' }
"""}}}
""" Elm: {{{
"Plug 'lambdatoast/elm.vim', { 'for' : 'elm' }
"""}}}
""" Swift: {{{
Plug 'kballard/vim-swift', { 'for' : 'swift', 'do' : 'brew -v install swiftlint swiftgen' }
"""}}}
""" Objective C: {{{
"Plug 'b4winckler/vim-objc', { 'for' : 'objc, switf' }
"""}}}
""" Objective J: {{{
"Plug 'nanki/vim-objj'
"""}}}
""" IOS: {{{
"Plug 'eraserhd/vim-ios'
"""}}}
""" Groovy: {{{
"Plug 'rdolgushin/groovy.vim'
"Plug 'tfnico/vim-gradle'
"""}}}
""" Go: {{{
Plug 'fatih/vim-go', { 'do' : 'go get -u github.com/golang/lint/golint' }
Plug 'garyburd/go-explorer', { 'for': 'go' }
"""}}}
""" CSS: {{{
Plug 'hail2u/vim-css3-syntax'
"Plug 'lilydjwg/colorizer'
"Plug 'ap/vim-css-color', { 'for': 'css' }
Plug 'ap/vim-css-color'
"Plug 'gorodinskiy/vim-coloresque'
"""}}}
""" SASS: {{{
Plug 'cakebaker/scss-syntax.vim'
"""}}}
""" LESS: {{{
Plug 'groenewege/vim-less'
"""}}}
""" PostCSS: {{{
Plug 'stephenway/postcss.vim'
"""}}}
""" PList: {{{
Plug 'darfink/vim-plist'
"""}}}
""" Rust: {{{
"Plug 'wting/rust.vim'
"""}}}
""" JSX: {{{
Plug 'mxw/vim-jsx' | Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx' | Plug 'pangloss/vim-javascript', { 'do' : 'npm install -g babel' }
"""}}}
""" Javascript: {{{
"Plug 'isRuslan/vim-es6'
"Plug 'othree/yajs.vim'

Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'digitaltoad/vim-jade'
"Plug 'mklabs/grunt.vim'
"Plug 'aaronj1335/underscore-templates.vim'
Plug 'heavenshell/vim-jsdoc', { 'for': 'javascript' }
Plug 'claco/jasmine.vim', { 'for': 'javascript' }
Plug 'marijnh/tern_for_vim', { 'for': 'javascript', 'do': 'npm install -g tern && npm install' }
"Plug 'KabbAmine/gulp-vim', { 'for' : 'javascript' }
Plug 'vim-scripts/vim-babel', { 'for' : 'javascript' } | Plug 'mattn/webapi-vim'
Plug 'vim-scripts/npm.vim'
"""}}}
""" JSON: {{{
Plug 'elzr/vim-json'
"""}}}
""" Typescript: {{{
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi', { 'for': 'typescript', 'do': 'npm install -g typescript' }
"""}}}
""" Ansi Escape: {{{
Plug 'powerman/vim-plugin-AnsiEsc'
"""}}}
""" HTML: {{{
Plug 'othree/html5.vim'
"""}}}
""" XML: {{{
Plug 'othree/xml.vim'
Plug 'sukima/xmledit'
"""}}}
""" TOML: {{{
"Plug 'cespare/vim-toml'
"""}}}
""" Latex: {{{
"Plug 'jcf/vim-latex'
"""}}}
""" Database Access: {{{
"Plug 'vim-scripts/dbext.vim'
"""}}}
""" MonogDB: {{{
"Plug 'robu3/vimongous'
"""}}}
""" RC: {{{
Plug 'vim-scripts/rcshell.vim'
"""}}}
""" Sql: {{{
Plug 'shmup/vim-sql-syntax'
Plug 'cosminadrianpopescu/vim-sql-workbench', { 'for': 'sql' }
"""}}}
""" Markdown: {{{
Plug 'plasticboy/vim-markdown'
Plug 'shime/vim-livedown', { 'for': 'markdown', 'do': 'npm install -g livedown' }
"""}}}
""" Mustache: {{{
Plug 'tobyS/vmustache'
Plug 'mustache/vim-mustache-handlebars'
"""}}}
""" Vagrant: {{{
"Plug 'vim-scripts/vim-vagrant'
"""}}}
""" Puppet: {{{
"Plug 'rodjek/vim-puppet'
"""}}}
""" PHP: {{{
"Plug 'mkusher/padawan.vim', { 'do': 'composer global require mkusher/padawan --no-interaction' }    " use eclim completion
"Plug 'StanAngeloff/php.vim' | Plug 'shawncplus/phpcomplete.vim'
Plug 'mxw/vim-xhp'
Plug 'StanAngeloff/php.vim'
"Plug 'shawncplus/phpcomplete.vim'
Plug 'dantleech/vim-phpunit', { 'for': 'php' }
Plug 'dantleech/vim-phpnamespace', { 'for': 'php' }
Plug 'arnaud-lb/vim-php-namespace', { 'for': 'php' }
Plug 'tobyS/pdv' | Plug 'tobyS/vmustache', { 'for': 'php' }
Plug 'vim-php/vim-composer'
Plug 'adoy/vim-php-refactoring-toolbox', { 'for': 'php' }
Plug 'stephpy/vim-php-cs-fixer', { 'for': 'php', 'do': '. $HOME/.vim/bin/vim_postinstall_php_cs_fixer.sh' }
"Plug 'Janiczek/vim-latte'
"Plug 'xsbeats/vim-blade'
"Plug 'evidens/vim-twig'
"Plug 'tokutake/twig-indent', { 'for': 'twig' }
"Plug 'vim-scripts/phpfolding.vim'
"""}}}

""" Travis: {{{
Plug 'keith/travis.vim'
"""}}}

Plug 'evanmiller/nginx-vim-syntax'
