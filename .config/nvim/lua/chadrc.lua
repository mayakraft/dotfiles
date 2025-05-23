-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "onedark",

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
  mason = {
    pkgs = {
      "typescript-language-server",
      "lua-language-server",
      "eslint-lsp",
      "prettierd",
      "eslint_d",
      "clangd",
    },
  },
}

return M
