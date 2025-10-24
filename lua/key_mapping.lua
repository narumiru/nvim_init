
-- ────────────────────便利系────────────────────
-- ノーマルモード移行時自動保存
vim.keymap.set('i','<ESC>','<ESC>:w<CR>')
-- ────────────────────移動系────────────────────

-- リーダー
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- very magic 検索化
-- vim.keymap.set('n', '//'  '/\v')

-- gj,gkの入れ替え
vim.keymap.set('n', 'j' , 'gj')
vim.keymap.set('n', 'k' , 'gk')
vim.keymap.set('n', 'gj', 'j' )
vim.keymap.set('n', 'gk', 'k' )

-- インサート中の左右移動
vim.keymap.set({'i','c'}, '<C-h>', '<left>' )
vim.keymap.set({'i','c'}, '<C-l>', '<right>')

-- shift+hjklの拡張
vim.keymap.set({'n','v'}, '<S-h>', '^')
vim.keymap.set({'n','v'}, '<S-j>', '}')
vim.keymap.set({'n','v'}, '<S-k>', '{')
vim.keymap.set({'n','v'}, '<S-l>', '$')


--  その次の行を改行
vim.keymap.set('n',      '<S-CR>', '<Esc>A<CR><Esc>')
vim.keymap.set({'i','c'},'<S-CR>', '<Esc>A<CR>')

-- 括弧移動
vim.keymap.set({'n','v'},'M', '%')

-- ────────────────────hop.nvim(easymotion)────────────────────
-- place this in one of your configuration file(s)
local hop = require('hop')

vim.keymap.set('', 'f','<cmd>HopWordCurrentLine<CR>')
vim.keymap.set('', 'F','<cmd>HopWord<CR>')
vim.keymap.set('', 's','<cmd>HopLineMW<CR>')
vim.keymap.set('', 'S','<cmd>HopPattern<CR>')

vim.keymap.set('', 't', function()
  hop.hint_char1({ direction = require('hop.hint').HintDirection, current_line_only = false})
end, {remap=true})
vim.keymap.set('', 'T', function()
  hop.hint_char2({ direction = require('hop.hint').HintDirection, current_line_only = false})
end, {remap=true})

-- ────────────────────コピペ系────────────────────

-- インサート中に貼り付け
vim.keymap.set({'c','i'},'<C-V>','<c-r>+')

-- ビジュアルモードでペーストしたときに、クリップボードを更新しない
vim.keymap.set('v','p','"_dP')

-- クリップボードを更新しない
vim.keymap.set('n','x','"_x')
vim.keymap.set('v','x','"_dx')

-- ────────────────────ビジュアルモード系────────────────────
-- 全選択
vim.keymap.set('n','<leader>a','ggVG')
-- 矩形
vim.keymap.set('v','v',' <c-v>')

-- ────────────────────システム関係────────────────────
-- 設定ファイルを読み込む
vim.keymap.set('n','<leader>so','<cmd>source %<CR>')

-- ────────────────────ディレクトリ移動────────────────────
-- 開いてるファイルのディレクトリに移動
vim.keymap.set('n','<Leader>cu','<cmd>lcd %:h<CR>')
-- 
vim.keymap.set('n','<Leader>in','<cmd>cd ~/.config/nvim/lua<CR><cmd>e ../init.lua<CR>')
vim.keymap.set('n','<Leader>lz','<cmd>cd ~/.config/nvim/lua<CR><cmd>e config/lazy.lua<CR>')
vim.keymap.set('n','<Leader>pl','<cmd>cd ~/.config/nvim/lua/plugins<CR>')
vim.keymap.set('n','<Leader>cd','<cmd>cd ~/git_txt/txt<CR>')

-- ────────────────────日本語系────────────────────
-- 括弧
vim.keymap.set('n', '<Leader>[', 'I「<ESC>A」  <ESC>')
vim.keymap.set('v', '<Leader>[', '"zc「<c-r>z」<ESC>')
vim.keymap.set('n', '<Leader>]', 'I『<ESC>A』  <ESC>')
vim.keymap.set('v', '<Leader>]', '"zc『<c-r>z』<ESC>')
vim.keymap.set('n', '<Leader>{', 'I【<ESC>A】  <ESC>')
vim.keymap.set('v', '<Leader>{', '"zc【<c-r>z】<ESC>')
vim.keymap.set('n', '<Leader>}', 'I《<ESC>A》  <ESC>')
vim.keymap.set('v', '<Leader>}', '"zc《<c-r>z》<ESC>')
                                             
vim.keymap.set('n','<Leader>8', 'I(<ESC>A)    <ESC>')
vim.keymap.set('v','<Leader>8', '"zc(<c-r>z)  <ESC>')
vim.keymap.set('n','<Leader>(', 'I（<ESC>A）  <ESC>')
vim.keymap.set('v','<Leader>(', '"zc（<c-r>z）<ESC>')


-- コメント
vim.keymap.set('n','<Leader>/', 'I//<ESC>      ')
vim.keymap.set('v','<Leader>/', '<c-v>0I//<ESC>')
vim.keymap.set('n','<Leader>?', '/\v^・<CR>    ')
vim.keymap.set('v','<Leader>?', '/\v^・<CR>    ')

-- 引用符
vim.keymap.set('n','<Leader>.', 'I＞<ESC>            ')
vim.keymap.set('v','<Leader>.', '<c-v>0I＞<ESC>      ')
vim.keymap.set('n','<Leader>>', 'I＞「<ESC>A」<ESC>  ')
vim.keymap.set('v','<Leader>>', '"zc＞「<c-r>z」<ESC>')

vim.keymap.set('n','<Leader>,', 'I≫<ESC>             ')
vim.keymap.set('v','<Leader>,', '<c-v>0I≫<ESC>       ')
vim.keymap.set('n','<Leader><', 'I≫「<ESC>A」<ESC>   ')
vim.keymap.set('v','<Leader><', '"zc≫「<c-r>z」<ESC> ')

-- 取り消し線
vim.keymap.set('n','<Leader>~', 'I~~<ESC>A~~<ESC>  ')
vim.keymap.set('v','<Leader>~', '"zc~~<c-r>z~~<ESC>')


-- ────────────────────mdファイル────────────────────
-- vimgrip使用時の移動
vim.keymap.set({'n','v'},'[s', '/^#+ ')
vim.keymap.set({'n','v'},']s', ':cnext<CR>')
vim.keymap.set({'n','v'},'[S', ':<C-u>cfirst<CR>')
vim.keymap.set({'n','v'},']S', ':<C-u>clast<CR>')

-- ────────────────────検索・grip────────────────────
-- 大文字無視(大文字が含まれる場合のみ区別）
vim.opt.ignorecase=true
vim.opt.smartcase=true

-- 末尾まで検索したら先頭に移動
vim.opt.wrapscan=true

-- very magic
vim.keymap.set({'n','v'},'/','/\\v')
vim.keymap.set({'n','v'},'?','/\\v#')


-- その単語が含まれるmdファイルのタイトルをgrip検索。
vim.keymap.set('n','#', '<cmd>vim /^# / % | <cmd>winc b<CR>')

-- その単語が含まれるカレントファイルのタイトルをgrip検索。
vim.keymap.set('n', '<leader>3', function()
  local searchTerm = vim.fn.input('Vimgrep Heading: /^# ')

  if searchTerm == nil then
    print('Vimgrep cancelled.')
    return
  end

  local finalPattern = ''

  if searchTerm == '' then
    finalPattern = '^# '
  else
    local escapedTerm = vim.fn.escape(searchTerm, '/')
    finalPattern = '^# .*' .. escapedTerm .. '.*'
  end

  vim.cmd('vimgrep /' .. finalPattern .. '/ %')
  vim.cmd('copen')

end, { desc = 'Vimgrep search for heading in current file' })

--見出し2以降を含む
vim.keymap.set('n', '<leader>#', function()
  local searchTerm = vim.fn.input('Vimgrep Heading: /^#+ ')

  if searchTerm == nil then
    print('Vimgrep cancelled.')
    return -- 関数をここで終了
  end

  local finalPattern = ''
  if searchTerm == '' then
    finalPattern = '^#+ '
  else
    local escapedTerm = vim.fn.escape(searchTerm, '/')
    finalPattern = '^#+ .*' .. escapedTerm .. '.*'
  end

  vim.cmd('vimgrep /' .. finalPattern .. '/ %')
  vim.cmd('copen')

end, { desc = 'Vimgrep search for heading in current file' })


-- その単語が含まれるカレントディレクトリ内のタイトルをgrip検索。
vim.keymap.set('n', '<leader>3', function()
  local searchTerm = vim.fn.input('Vimgrep Heading: /^# **')

  if searchTerm == nil then
    print('Vimgrep cancelled.')
    return
  end

  local finalPattern = ''

  if searchTerm == '' then
    finalPattern = '^# '
  else
    local escapedTerm = vim.fn.escape(searchTerm, '/')
    finalPattern = '^# .*' .. escapedTerm .. '.*'
  end

  vim.cmd('vimgrep /' .. finalPattern .. '/ %')
  vim.cmd('copen')

end, { desc = 'Vimgrep search for heading in current directory files' })

--見出し2以降を含む
vim.keymap.set('n', '<leader>#', function()
  local searchTerm = vim.fn.input('Vimgrep Heading: /^#+ **')

  if searchTerm == nil then
    print('Vimgrep cancelled.')
    return -- 関数をここで終了
  end

  local finalPattern = ''
  if searchTerm == '' then
    finalPattern = '^#+ '
  else
    local escapedTerm = vim.fn.escape(searchTerm, '/')
    finalPattern = '^#+ .*' .. escapedTerm .. '.*'
  end

  vim.cmd('vimgrep /' .. finalPattern .. '/ %')
  vim.cmd('copen')

end, { desc = 'Vimgrep search for heading in current directory files' })


-- vimgrip使用時の移動
vim.keymap.set('n','[q', ':cprevious<CR>')
vim.keymap.set('n',']q', ':cnext<CR>')
vim.keymap.set('n','[Q', ':<C-u>cfirst<CR>')
vim.keymap.set('n',']Q', ':<C-u>clast<CR>')


-- ────────────────────git関係────────────────────
vim.keymap.set('n','<leader>gs', ':<C-u>clast<CR>')
