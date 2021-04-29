" Plugins
call plug#begin('~/.local/share/nvim/site/plugged')
Plug  'neovim/nvim-lspconfig'
Plug  'hrsh7th/nvim-compe'
"Plug  'nvim-lua/completion-nvim'
Plug 'tpope/vim-surround'
"Plug 'vimwiki/vimwiki'
"Plug 'lervag/vimtex'
"Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
Plug 'honza/vim-snippets'
Plug 'Yggdroot/indentLine'
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-fugitive'
"Plug 'lepture/vim-jinja'
Plug 'ryanoasis/vim-devicons'
Plug 'bagrat/vim-buffet'
call plug#end()


lua << EOF
require('lspconfig').vimls.setup{
	cmd = { "vim-language-server", "--stdio" };
	    filetypes = { "vim" },
	    init_options = {
	      diagnostic = {
		enable = true
	      },
	      indexes = {
		count = 3,
		gap = 100,
		projectRootPatterns = { "runtime", "nvim", ".git", "autoload", "plugin" },
		runtimepath = true
	      },
	      iskeyword = "@,48-57,192-255,-#",
	      runtimepath = "",
	      suggest = {
		fromRuntimepath = true,
		fromVimruntime = true
	      },
	      vimruntime = ""
	    }
	}
	root_dir = function(fname)
		return util.find_git_ancestor(fname) or vim.fn.getcwd()
	end
EOF

set completeopt=menuone,noselect
let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:true

"runtime modules/plugins.vim
runtime modules/basics.vim
runtime modules/mappings.vim
runtime modules/filetype.vim
runtime modules/nerdtree.vim
runtime modules/statusline.vim
"runtime modules/vimtex.vim
runtime modules/indentline.vim
runtime modules/yankhi.vim
runtime modules/buffet.vim

