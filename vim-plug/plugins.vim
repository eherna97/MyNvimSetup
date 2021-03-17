" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    "Plug 'sheerun/vim-polyglot'
    Plug 'Townk/vim-autoclose'
    Plug 'Yggdroot/indentLine'
    Plug 'tpope/vim-surround'
    Plug 'vim-python/python-syntax'
    Plug 'voldikss/vim-floaterm'

    " File Explorer
    Plug 'scrooloose/NERDTree'

    " Colorschemes
    Plug 'sainnhe/sonokai'
    "Plug 'kadekillary/Turtles'
    "Plug 'wadackel/vim-dogrun'
    "Plug 'pineapplegiant/spaceduck', {'branch': 'main'}
    "Plug 'dracula/vim', {'as': 'dracula'}
    Plug 'xstrex/FireCode.vim'
    "Plug 'patstockwell/vim-monokai-tasty'
    "Plug 'kamykn/dark-theme.vim'
    "Plug 'beikome/cosme.vim'
    "Plug 'sonjapeterson/1989.vim'
    Plug 'bcicen/vim-vice'
    "Plug 'nikolvs/vim-sunbather'

    " LightLine stuff
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'w0rp/ale'
    Plug 'itchyny/lightline.vim'
    Plug 'maximbaz/lightline-ale'
    Plug 'mengelbrecht/lightline-bufferline'

call plug#end()
