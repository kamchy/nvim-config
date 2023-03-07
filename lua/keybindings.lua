function Map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

vim.g.mapleader=' '

Map('n', '<leader>w', '<cmd>write<cr>', {desc= "Save"})
Map('n', '<leader>sv', '<cmd>source %<cr>')
Map('n', '<leader>xx', '<cmd>qa!<cr>')
Map('n', '<leader>ntt', '<cmd>NvimTreeFindFileToggle<cr>')
--Map('n', '<leader>q', '<cmd>set nohlsearch<cr>')

Map('n', '<leader>e', '<cmd>edit $MYVIMRC<cr>')
Map({'i'}, 'jk', '<esc>')

--telekasten


Map('n', '<leader>zf', ':lua require("telekasten").find_notes()<CR>')
Map('n', '<leader>zd', ':lua require("telekasten").find_daily_notes()<CR>')
Map('n', '<leader>zg', ':lua require("telekasten").search_notes()<CR>')
Map('n', '<leader>zz', ':lua require("telekasten").follow_link()<CR>')
Map('n', '<leader>zn', ':lua require("telekasten").new_note()<CR>')
Map('n', '<leader>zy', ':lua require("telekasten").yank_notelink()<CR>')
Map('n', '<leader>#', ':lua require("telekasten").show_tags()<CR>')
Map('n', '<leader>zt', ':lua require("telekasten").toggle_todo()<CR>')
Map('n', '<leader>zT', ':lua require("telekasten").goto_today()<CR>')
Map('n', '<leader>[ <ESC>', ':lua require("telekasten").insert_link({i=true})<CR>')
-- inoremap <leader>[ <ESC>:lua require('telekasten').insert_link({ i=true })<CR>
-- nnoremap <leader>zf :lua require('telekasten').find_notes()<CR>
-- nnoremap <leader>zd :lua require('telekasten').find_daily_notes()<CR>
-- nnoremap <leader>zg :lua require('telekasten').search_notes()<CR>
-- nnoremap <leader>zz :lua require('telekasten').follow_link()<CR>
-- nnoremap <leader>zT :lua require('telekasten').goto_today()<CR>
-- nnoremap <leader>zW :lua require('telekasten').goto_thisweek()<CR>
-- nnoremap <leader>zw :lua require('telekasten').find_weekly_notes()<CR>
-- nnoremap <leader>zn :lua require('telekasten').new_note()<CR>
-- nnoremap <leader>zN :lua require('telekasten').new_templated_note()<CR>
-- nnoremap <leader>zy :lua require('telekasten').yank_notelink()<CR>
-- nnoremap <leader>zc :lua require('telekasten').show_calendar()<CR>
-- nnoremap <leader>zC :CalendarT<CR>
-- nnoremap <leader>zi :lua require('telekasten').paste_img_and_link()<CR>
-- nnoremap <leader>zt :lua require('telekasten').toggle_todo()<CR>
-- " Toggling todos in visual mode
-- vnoremap <leader>zt :lua require('telekasten').toggle_todo({ v = true })<CR>
-- nnoremap <leader>zb :lua require('telekasten').show_backlinks()<CR>
-- nnoremap <leader>zF :lua require('telekasten').find_friends()<CR>
-- nnoremap <leader>zI :lua require('telekasten').insert_img_link({ i=true })<CR>
-- nnoremap <leader>zp :lua require('telekasten').preview_img()<CR>
-- nnoremap <leader>zm :lua require('telekasten').browse_media()<CR>
-- nnoremap <leader># :lua require('telekasten').show_tags()<CR>
--
-- " we could define [[ in **insert mode** to call insert link
-- " inoremap [[ <ESC>:lua require('telekasten').insert_link()<CR>
-- " alternatively: leader [
-- inoremap <leader>[ <ESC>:lua require('telekasten').insert_link({ i=true })<CR>
-- inoremap <leader>zt <ESC>:lua require('telekasten').toggle_todo({ i=true })<CR>
-- inoremap <leader># <cmd>lua require('telekasten').show_tags({i = true})<cr>
--
