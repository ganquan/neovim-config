[English](./README.md) | 中文说明

# 简介

这是一份轻量级的Neovim配置，适用于C/C++开发。

把编辑器配置成全能的IDE不是一个有意义的目标。顺手的工具只需要4方面基础功能：`编程语言相关核心功能`、`Git集成`、`Terminal支持`、`编辑器适度易用性改善`，就足够“生产力”了，所以，这份配置聚焦这4方面，尽可能追求轻量。

目标：
* 尽可能少的插件
* 尽可能使用lua配置(逐渐过渡)


# 配置说明
### 前置依赖
+ Neovim version: 0.8
+ Boost neovim start: lewis6991/impatient.nvim
+ Plugin Management: Packer

### 编程语言相关核心功能

+ Code compelition: hrsh7th/nvim-cmp
+ LSP: neovim/nvim-lspconfig
+ LSP process: j-hui/fidget.nvim
+ Syntax HighLight: nvim-treesitter/nvim-treesitter
+ LSP symbols list: liuchengxu/vista.vim

### Git集成
+ Git: tpope/vim-fugitive

### 终端支持
+ Terminal: float-term

### 编辑器易用度提升
+ Start page: mhinz/vim-startify
+ Color Scheme: sainnhe/gruvbox-material
+ Statusline: lualine.nvim
+ Buffer management: bufferline.lua
+ Code comment: tpope/vim-commentary

+ File Explorer: nvim-tree/nvim-tree.lua
+ QuickFix: kevinhwang91/nvim-bqf
+ Better Scroll: karb94/neoscroll.nvim
+ Search: nvim-telescope
+ Notify: rcarriga/nvim-notify



