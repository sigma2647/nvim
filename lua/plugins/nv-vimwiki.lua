vim.cmd([[
let g:vimwiki_list = [{'path': '/Users/lawrence/Library/Mobile Documents/iCloud~md~obsidian/Documents/MarkDown/000vimwiki',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
au filetype vimwiki silent! iunmap <buffer> <Tab>
au filetype vimwiki silent! iunmap <buffer> <CR>
]])
