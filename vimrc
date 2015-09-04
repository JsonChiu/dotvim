call pathogen#infect()
syntax on
syntax enable

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()



" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'plasticboy/vim-markdown'

" =========== Airline  ========  
Plugin 'bling/vim-airline'
set laststatus=2


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Taglist
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'taglist.vim'
let Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
let Tlist_Use_Right_Window = 1 "让taglist窗口出现在Vim的右边
let Tlist_File_Fold_Auto_Close = 1 "当同时显示多个文件中的tag时，设置为1，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来。
let Tlist_Show_One_File = 1 "只显示一个文件中的tag，默认为显示多个
let Tlist_Sort_Type ='name' "Tag的排序规则，以名字排序。默认是以在文件中出现的顺序排序
let Tlist_GainFocus_On_ToggleOpen = 1 "Taglist窗口打开时，立刻切换为有焦点状态
let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_WinWidth = 32 "设置窗体宽度为32，可以根据自己喜好设置


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config Winmanager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'bufexplorer'
"Plugin 'winmanager'
"let g:NERDTree_title="[NERDTree]"  
"let g:winManagerWindowLayout="NERDTree|TagList"  
"let g:winManagerWindowLayout='NERDTree|TagList,BufExplorer'
"
"  
"function! NERDTree_Start()  
"    exec 'NERDTree'  
"endfunction  
"  
"function! NERDTree_IsValid()  
"    return 1  
"endfunction  
"
"nmap wm :WMToggle<CR>
"

Plugin 'minibufexpl.vim'
let g:miniBufExplMapWindowNavArrows = 1  
let g:miniBufExplMapWindowNavVim = 1  
let g:miniBufExplMapCTabSwitchWindows = 1  
let g:miniBufExplModSelTarget = 1  
"let g:miniBufExplForceSyntaxEnable = 1  
"let g:miniBufExplorerMoreThanOne=2  
map <C-[> :MBEbp<CR>
map <C-]> :MBEbn<CR>


" =========== NERDTree  ========  
Plugin 'scrooloose/nerdtree'
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" =========== Tagbar  ========  
Plugin 'majutsushi/tagbar'
let g:tagbar_ctags_bin='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
let g:tagbar_width=30
map <F3> :Tagbar<CR>
autocmd BufReadPost *.py call tagbar#autoopen()

   





set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set clipboard=unnamed
"set background=dark
colorscheme molokai

