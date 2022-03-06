vim.cmd([[
let g:vimwiki_list = [{'path': '/Users/$USER/Library/Mobile Documents/iCloud~md~obsidian/Documents/MarkDown/wiki',
                      \ 'ext': '.md'}]
au filetype vimwiki silent! iunmap <buffer> <Tab>
au filetype vimwiki silent! iunmap <buffer> <CR>
au filetype vimwiki silent! iunmap <buffer> <S-Tab>
]])
--let g:vimwiki_list = [{'path': '/Users/$USER/Library/Mobile Documents/iCloud~md~obsidian/Documents/MarkDown/000vimwiki',
                      --\ 'syntax': 'markdown', 'ext': '.md'}]

--require("luasnip").filetype_extend("vimwiki", {"markdown"}


--[[
https://github.com/vimwiki/vimwiki
--]]
