" ---------------------------------------------------------------------------------------
"                                        Tags
" ---------------------------------------------------------------------------------------
" http://vim.wikia.com/wiki/Browsing_programs_with_tags
" 
" Quick reference :
" * the command ':tag <tagname>' will jump to the tag named <tagname>
" * position the cursor over the tag name and press g] to get a list  of matching tags. 
" * the command ':tselect <tagname>' list all the tag matches
" * returning after a tag jump Ctrl-t
" * You can use the 'tag' ex command to jump to a previously jumped tag location
" * You can list the current tag stack using the 'tags' ex command

" The 'tags' option is a list of file names.  Each of these files is searched for the tag
" :help tag
set tags=tags "search the tag in the tags file in the current directory "

" Load a tag file
" Loads a tag file from ~/.vim.tags/, based on the argument provided.
" The command Ltag is mapped to this function.
" http://git.mwop.net/?a=summary&p=vimrc
" Example  :call LoadTags(tagfile)

:function! LoadTags(file)
:   let tagspath = $HOME . "/.vim.tags/" . a:file
:   let tagcommand = 'set tags+=' . tagspath
:   execute tagcommand
:endfunction
:command! -nargs=1 Ltag :call LoadTags("<args>")
 
map <silent><leader><Left> <C-T> "returning after a tag jump

"You can position the cursor over a tag name & jump to a tag in the same window
map <silent><leader><Right> <C-]> 

map <silent><leader><Up> <C-W>] "jump to a tag in a split

