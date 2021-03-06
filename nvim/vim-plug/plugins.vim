" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Undotree
    Plug 'mbbill/undotree'
    " Gitgutter
    Plug 'airblade/vim-gitgutter'
    " Airline
	Plug 'vim-airline/vim-airline'
	" Dark theme
	Plug 'joshdick/onedark.vim'
	" Auto pairs
	Plug 'jiangmiao/auto-pairs'
	" NerdCommenter
	Plug 'preservim/nerdcommenter'
	" Auto change html tags
  	Plug 'AndrewRadev/tagalong.vim'
	" Text navigation
	Plug 'easymotion/vim-easymotion'
	" Python docstrings
	Plug 'pixelneo/vim-python-docstring'
	" Coc completion
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " Vim Snippets
    Plug 'honza/vim-snippets'
    " Vim Bujo - Todo
    Plug 'vuciv/vim-bujo'
	" Vim Markdown
	Plug 'bouk/vim-markdown'
	" Vim Pencil
	Plug 'reedes/vim-pencil'
	" Vim Autocorrect
	Plug 'reedes/vim-litecorrect'
	" Vim Go
	Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
	" Vim goyo
	Plug 'junegunn/goyo.vim'
	" Fzf
	Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
	Plug 'junegunn/fzf.vim'
	" Unite Vim
	Plug 'Shougo/unite.vim'
	" Citation Vim
	Plug 'rafaqz/citation.vim'
	" Vim Limelight
	Plug 'junegunn/limelight.vim'
	" Thesaurus
	Plug 'ron89/thesaurus_query.vim'
	" Iceberg Theme
	Plug 'cocopon/iceberg.vim'
	" Nord Theme
	Plug 'arcticicestudio/nord-vim'
	" Vim Indentline
	Plug 'Yggdroot/indentLine'
	" VimTex
	Plug 'lervag/vimtex'
	" Todoist
	Plug 'romgrk/todoist.nvim', { 'do': ':TodoistInstall'  }
	" Vim Clap
	Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!'  }
	" Dart Lang
	Plug 'dart-lang/dart-vim-plugin'
	" Dashboard
	Plug 'glepnir/dashboard-nvim'
	" Surround
	Plug 'tpope/vim-surround'
call plug#end()
	

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
