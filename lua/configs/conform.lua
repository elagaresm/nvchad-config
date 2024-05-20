local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescriptreact = { "prettierd" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 1000,
    lsp_fallback = true,
  },
}

require("conform").setup(options)

--[[ require("conform").formatters.prettier = function(bufnr)
  return {
    command = require("conform.util").find_executable({
      "C:\\Users\\Enmanuel\\AppData\\Roaming\\npm\\prettier.cmd",
    }, "prettier"),
  }
end ]]
