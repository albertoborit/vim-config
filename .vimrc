let g:coc_disable_startup_warning = 1
" ---------------------------
" Configuración Básica
" ---------------------------
syntax on
set number          " Mostrar números de línea
set relativenumber  " Números de línea relativos
set tabstop=4       " Longitud del tabulador
set shiftwidth=4    " Longitud de indentación
set expandtab       " Convertir tabs a espacios
set cursorline      " Resaltar la línea actual
set background=dark " Fondo oscuro

" ---------------------------
" Paquetes y Plugin Manager
" ---------------------------
call plug#begin('~/.vim/plugged')

" NERDTree para explorar archivos
Plug 'preservim/nerdtree'

" CoC (Conquer of Completion) para autocompletado y navegación a definiciones
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" vim-fugitive para integración con Git
Plug 'tpope/vim-fugitive'

" vim-gitgutter para mostrar cambios en el gutter
Plug 'airblade/vim-gitgutter'

" vim-easymotion para navegación rápida
Plug 'easymotion/vim-easymotion'

" Tema de colores oscuro (puedes cambiarlo por el que prefieras)
Plug 'morhetz/gruvbox'

call plug#end()

" ---------------------------
" Configuración de NERDTree
" ---------------------------
map <C-n> :NERDTreeToggle<CR> " Abre/cierra NERDTree con Ctrl+n
let NERDTreeShowHidden = 1
" ---------------------------
" Configuración de CoC (JS/TS)
" ---------------------------
" Activar CoC y configuración para TypeScript y JavaScript
let g:coc_global_extensions = ['coc-tsserver']

" Atajos para ir a la definición
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <C-w>1 :1wincmd w<CR>
nmap <C-w>2 :2wincmd w<CR>
nmap <C-w>3 :3wincmd w<CR>
nmap <C-w>4 :4wincmd w<CR>

" ---------------------------
" Configuración de vim-fugitive
" ---------------------------
" No se requiere configuración extra, pero aquí tienes algunos comandos útiles:
" :Gstatus - Ver el estado de git
" :Gdiff - Ver los cambios en los archivos
" :Gcommit - Hacer commit de los cambios
" :Gpush - Subir los cambios al repositorio remoto
" :Gpull - Descargar los cambios del repositorio remoto

" ---------------------------
" Configuración de vim-gitgutter
" ---------------------------
" No requiere configuración adicional, pero aquí hay algunos comandos útiles:
" [c - Salta a la hunk (cambio) anterior
" ]c - Salta a la siguiente hunk
" :GitGutterToggle - Activa/desactiva el plugin

" ---------------------------
" Configuración de vim-easymotion
" ---------------------------
nmap <Leader>j <Plug>(easymotion-j) " Salta a una línea hacia abajo
nmap <Leader>k <Plug>(easymotion-k) " Salta a una línea hacia arriba
nmap <Leader>f <Plug>(easymotion-bd-f) " Salta a un carácter visible en la línea

" Puedes personalizar más atajos según tus necesidades

" ---------------------------
" Configuración de Tema
" ---------------------------
colorscheme gruvbox " Activar tema gruvbox

