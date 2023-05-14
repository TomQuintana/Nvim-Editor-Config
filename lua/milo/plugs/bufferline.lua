-- import comment plugin safely
local setup, buffer = pcall(require, "bufferline")
if not setup then
  return
end

--diagnostics = "nvim_lsp"

buffer.setup({
  options = {
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end
  }
})
