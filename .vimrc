" settings "
syntax on
set tabstop=8
set noexpandtab
set shiftwidth=8
set nowrap
set listchars=tab:>-,trail:.,extends:#,nbsp:#
set list
set nowrap
set number
autocmd FileType javascript set expandtab shiftwidth=2 tabstop=2
autocmd FileType feature set expandtab shiftwidth=2 tabstop=2
noremap <silent> <C-N> :NERDTreeToggle<CR>
call pathogen#infect()

" command "
command Cdiv call PrintCDivider()
command CDdiv call PrintCDDivider()
command CSdiv call PrintCSDivider()
command Mdiv call PrintMDivider()
command Tdiv call PrintTDivider()
command Sdiv call PrintSDivider()
command Pdiv call PrintPDivider()
command Hdiv call PrintHDivider()
command HDdiv call PrintHDDivider()
command Ddiv call PrintDDivider()
command Divider call PrintCoutDivider()
command Mw call MarkWindowSwap()
command Sw call DoWindowSwap()

" functions "
function PrintCDivider()
   let @x='//=========================================================================='
   put x
endfunction

function PrintMDivider()
   let @x='#==========================================================================='
   put x
endfunction

function PrintTDivider()
   let @x='%___________________________________________________________________________'
   put x
endfunction

function PrintPDivider()
   let @x='%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%'
   put x
endfunction

function PrintSDivider()
   let @x='////////////////////////////////////////////////////////////////////////////'
   put x
endfunction

function PrintHDivider()
   let @x='############################################################################'
   put x
endfunction

function PrintHDDivider()
   let @x='#---------------------------------------------------------------------------'
   put x
endfunction

function PrintDDivider()
   let @x='----------------------------------------------------------------------------'
   put x
endfunction

function PrintCSDivider()
   let @x='/**************************************************************************/'
   put x
endfunction

function PrintCDDivider()
   let @x='//--------------------------------------------------------------------------'
   put x
endfunction

function PrintCoutDivider()
   let @x='cout << "----------------------------------------------------------------------------" << endl;'
   put x
endfunction

function! MarkWindowSwap()
    let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
    "Mark destination
    let curNum = winnr()
    let curBuf = bufnr( "%" )
    exe g:markedWinNum . "wincmd w"
    "Switch to source and shuffle dest->source
    let markedBuf = bufnr( "%" )
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' curBuf
    "Switch to dest and shuffle source->dest
    exe curNum . "wincmd w"
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' markedBuf 
endfunction
