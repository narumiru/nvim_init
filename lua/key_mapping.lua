
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
-- wordの先頭に
vim.keymap.set('', 'f','<cmd>HopWordCurrentLine<CR>')
vim.keymap.set('', 'F','<cmd>HopWord<CR>')
-- Line指定
vim.keymap.set('', 's','<cmd>HopLineMW<CR>')
-- パターン検索
-- vim.keymap.set('', 'S','<cmd>HopPattern<CR>')

-- 1文字検索
vim.keymap.set('', 't', function()
  require('hop').hint_char1({ direction = require('hop.hint').HintDirection, current_line_only = false})
end, {remap=true})
-- 2文字検索
vim.keymap.set('', 'T', function()
  require('hop').hint_char2({ direction = require('hop.hint').HintDirection, current_line_only = false})
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

-- インデントを複数回移動可能に
vim.keymap.set('v','<<',' <<gv')
vim.keymap.set('v','>>',' >>gv')

-- ────────────────────システム関係────────────────────
-- 設定ファイルを読み込む
vim.keymap.set('n','<leader>so','<cmd>source %<CR>')

-- ────────────────────ディレクトリ移動────────────────────
-- 開いてるファイルのディレクトリに移動
vim.keymap.set('n','<Leader>cu','<cmd>lcd %:h<CR>')
-- 

if vim.fn.has("mac") == 1 then
    vim.keymap.set('n','<Leader>in','<cmd>cd ~/.config/nvim/lua<CR><cmd>e ../init.lua<CR>')
    vim.keymap.set('n','<Leader>lz','<cmd>cd ~/.config/nvim/lua<CR><cmd>e config/lazy.lua<CR>')
    vim.keymap.set('n','<Leader>pl','<cmd>cd ~/.config/nvim/lua/plugins<CR>')
    vim.keymap.set('n','<Leader>cd','<cmd>cd ~/git_txt/txt<CR>')
    vim.keymap.set('n','<Leader>lo','<cmd>cd ~/research/my_bbmocbs/log<CR>')
    vim.keymap.set('n','<Leader>re','<cmd>cd ~/research/research_memo<CR><cmd>e 研究日誌_2025.md<CR>')

elseif vim.fn.has("win64") == 1 then
    vim.keymap.set('n','<Leader>in','<cmd>cd ~/AppData/Local/nvim/lua<CR><cmd>e ../init.lua<CR>')
    vim.keymap.set('n','<Leader>lz','<cmd>cd ~/AppData/Local/nvim/lua<CR><cmd>e config/lazy.lua<CR>')
    vim.keymap.set('n','<Leader>pl','<cmd>cd ~/AppData/Local/nvim/lua/plugins')
    vim.keymap.set('n','<Leader>cd','<cmd>cd ~/txt<CR>')
end

-- ────────────────────日本語系────────────────────
-- 括弧
vim.keymap.set('n', '<Leader>[', 'I「<ESC>A」<ESC>')
vim.keymap.set('v', '<Leader>[', '"zc「<c-r>z」<ESC>')
vim.keymap.set('n', '<Leader>]', 'I『<ESC>A』<ESC>')
vim.keymap.set('v', '<Leader>]', '"zc『<c-r>z』<ESC>')
vim.keymap.set('n', '<Leader>{', 'I【<ESC>A】<ESC>')
vim.keymap.set('v', '<Leader>{', '"zc【<c-r>z】<ESC>')
vim.keymap.set('n', '<Leader>}', 'I《<ESC>A》<ESC>')
vim.keymap.set('v', '<Leader>}', '"zc《<c-r>z》<ESC>')
                                             
vim.keymap.set('n','<Leader>8', 'I(<ESC>A)<ESC>')
vim.keymap.set('v','<Leader>8', '"zc(<c-r>z)<ESC>')
vim.keymap.set('n','<Leader>(', 'I（<ESC>A）<ESC>')
vim.keymap.set('v','<Leader>(', '"zc（<c-r>z）<ESC>')


-- コメント
vim.keymap.set('n','<Leader>/', 'I//<ESC>')
vim.keymap.set('v','<Leader>/', '<c-v>0I//<ESC>')
vim.keymap.set('n','<Leader>?', '/\v^・<CR>')
vim.keymap.set('v','<Leader>?', '/\v^・<CR>')

-- 引用符
vim.keymap.set('n','<Leader>.', 'I＞<ESC>')
vim.keymap.set('v','<Leader>.', '<c-v>0I＞<ESC>')
vim.keymap.set('n','<Leader>>', 'I＞「<ESC>A」<ESC>')
vim.keymap.set('v','<Leader>>', '"zc＞「<c-r>z」<ESC>')

vim.keymap.set('n','<Leader>,', 'I≫<ESC>')
vim.keymap.set('v','<Leader>,', '<c-v>0I≫<ESC>')
vim.keymap.set('n','<Leader><', 'I≫「<ESC>A」<ESC>')
vim.keymap.set('v','<Leader><', '"zc≫「<c-r>z」<ESC>')

-- 取り消し線
vim.keymap.set('n','<Leader>~', 'I~~<ESC>A~~<ESC>')
vim.keymap.set('v','<Leader>~', '"zc~~<c-r>z~~<ESC>')


-- ────────────────────mdファイル────────────────────
-- vimgrip使用時の移動
vim.keymap.set({'n','v'},'[s', '?\\v^#+ <CR>')
vim.keymap.set({'n','v'},']s', '/\\v^#+ <CR>')
vim.keymap.set({'n','v'},'[S', '?\\v^# <CR>')
vim.keymap.set({'n','v'},']S', '/\\v^# <CR>')

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
vim.keymap.set('n','#', '<cmd>lcd %:h<CR><cmd>vim /^# / % <CR><cmd>winc b<CR>')

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

  vim.cmd('lcd %:h')
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

  vim.cmd('lcd %:h')
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
-- neogitのstatus画面を開く
vim.keymap.set('n','<leader>gs',function()
  require('neogit').open({kind = "split_above"})
end, {remap=true})

-- blame
vim.keymap.set('n','<leader>bl',':Gitsigns blame')

--marge tool
vim.keymap.set('n', '<leader>df', ':DiffviewOpen<CR>')

vim.keymap.set('n', '[c', function()
  require('gitsigns').nav_hunk('prev')
end, { desc = 'Git: prev Hunk' }) -- remap=true は不要
-- vim.keymap.set('n', '[c', function()
vim.keymap.set('n', ']c', function()
  require('gitsigns').nav_hunk('next')
end, { desc = 'Git: Next Hunk' }) -- remap=true は不要

--────────────────────編集系────────────────────
--行の連結
vim.keymap.set('v','<c-s-j>','<c-j>') 

--────────────────────tex────────────────────
--句読点置き換え
vim.keymap.set('n','<leader>co','<cmd>:%s/、/，/g<CR><cmd>:%s/。/．/g<CR>') 

vim.keymap.set('n','<leader>ve','A\\verb||<esc><right>i') 
vim.keymap.set('n','<leader>4','VS$') 
vim.keymap.set('n','<leader>$','VS$') 

vim.keymap.set('v','<leader>ve','S$bi\\verb') 
vim.keymap.set('v','<leader>4','S$') 
vim.keymap.set('v','<leader>$','S$') 



--────────────────────ウィンドウ操作系────────────────────
-- <Leader> + w を押すと、新しいGoneovimウィンドウ
vim.keymap.set('n', '<Leader>sp', function()
  -- detach = true にすることで、現在のNeovimとは無関係に独立して起動します
  vim.fn.jobstart({'open', '-n', '-a', 'goneovim'}, {detach = true})
end, { desc = 'Launch new Goneovim instance' })
