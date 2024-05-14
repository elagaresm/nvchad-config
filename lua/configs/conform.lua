local options = {
  formatters_by_ft = {
    lsp_fallback = {
      false,
    },
    lua = { "stylua" },
    css = { "prettierd" },
    html = { "prettierd" },
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescriptreact = { "prettierd" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    -- enabled = true,
    timeout_ms = 2500,
    lsp_fallback = false,
  },
}

require("conform").setup(options)

--[[ require("conform").formatters.prettier = function(bufnr)
  return {
    command = require("conform.util").find_executable({
      "C:\\Users\\Enmanuel\\AppData\\Local\\nvim-data\\mason\\bin\\prettier.CMD",
    }, "prettier"),
  }
end ]]
