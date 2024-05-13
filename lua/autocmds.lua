local autocmd = vim.api.nvim_create_autocmd

-- only show modified AND unsaved buffers

--[[ autocmd({ "BufAdd", "BufEnter", "tabnew" }, {
  callback = function()
    vim.t.bufs = vim.tbl_filter(function(bufnr)
      return vim.api.nvim_buf_get_option(bufnr, "modified")
    end, vim.t.bufs)
  end,
}) ]]

autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Highlight word on cursor (NEEDS CONFIGURATION)

-- local client = vim.lsp.get_client_by_id(event.data.client_id)
-- if client and client.server_capabilities.documentHighlightProvider then
-- local highlight_augroup = vim.api.nvim_create_augroup('kickstart-lsp-highlight', { clear = false })
-- vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
--   buffer = event.buf,
--   group = highlight_augroup,
--   callback = vim.lsp.buf.document_highlight,
-- })
--
-- vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
--   buffer = event.buf,
--   group = highlight_augroup,
--   callback = vim.lsp.buf.clear_references,
-- })
