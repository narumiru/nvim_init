
-- ────────────────────プラグインマネージャー────────────────────
-- ブートストラップ
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)


-- ────────────────────システム関係────────────────────
-- 改行コードの自動認識"
vim.opt.fileformats='dos','unix','mac'
vim.opt.clipboard='unnamedplus'

-- マウス有効化
vim.opt.mouse = 'a'
vim.opt.title = true

-- 保存されていないファイルがあるときでも別のファイルを開くことができる
vim.opt.hidden=true

-- 日本語(マルチバイト文字)行の連結時には空白を入力しない。
-- vim.opt.formatoptions

-- □や○の文字があってもカーソル位置がずれないようにする。
vim.opt.ambiwidth=double

-- helpの日本語化
vim.opt.helplang='ja'

-- ────────────────────表示関係────────────────────
-- インデント設定
vim.opt.smartindent=true
vim.opt.expandtab=true
vim.opt.tabstop=4
vim.opt.shiftwidth=4

-- 不可視文字可視化
vim.opt.list = true
vim.opt.listchars = { tab = '>>', trail = '-', nbsp = '+' }


-- ────────────────────diff────────────────────
-- diffを横に
vim.opt.diffopt:append('vertical')
