local M = {}

function M.setup(opts)
  opts = opts or {}
  
  -- Auto-detect .hex files and set filetype
  vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    pattern = "*.hex",
    callback = function()
      vim.bo.filetype = "hex"
    end,
  })
end

return M