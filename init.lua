-- 리더 키 설정
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- lazy.nvim 부트스트랩
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- 플러그인 설정
require("lazy").setup({
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup()
    end,
  },
})

-- 단축키: Space + e 로 트리 토글
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
