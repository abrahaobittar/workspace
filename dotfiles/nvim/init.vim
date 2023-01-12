" Obs:
" Dependencias do Ale
"PHPMD composer global require phpmd/phpmd
"PHPCS composer global require squizlabs/php_codesniffer
"phpstan composer global require phpstan/phpstan
"php-cs-fixer composer global require friendsofphp/php-cs-fixer

set number

call plug#begin('C:\Users\Abrahao\AppData\Local\nvim\autoload\plugged')
    Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'StanAngeloff/php.vim', {'for': 'php'}
    Plug 'w0rp/ale'
    Plug 'vim-vdebug/vdebug'
call plug#end()

" Ale config
" disable linting while typing
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_open_list = 1
let g:ale_keep_list_window_open=0
let g:ale_set_quickfix=0
let g:ale_list_window_size = 5
let g:ale_php_phpcbf_standard='PSR2'
let g:ale_php_phpcs_standard='phpcs.xml.dist'
let g:ale_php_phpmd_ruleset='phpmd.xml'
let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ 'php': ['phpcbf', 'php_cs_fixer', 'remove_trailing_lines', 'trim_whitespace'],
  \}
let g:ale_fix_on_save = 1

command! -nargs=1 Silent execute ':silent !'.<q-args> | execute ':redraw!'
map <c-s> <esc>:w<cr>:Silent php-cs-fixer fix %:p --level=symfony<cr>