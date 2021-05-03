" LSP config
" Last Modified: 2021 Apr 30 18:49

" VimLS
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


" Clangd
lua << EOF
require'lspconfig'.clangd.setup{
    cmd = { "clangd", "--background-index" };
        filetypes = { "c", "cpp", "objc", "objcpp" }
    }
EOF

" nvim completion framework
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
