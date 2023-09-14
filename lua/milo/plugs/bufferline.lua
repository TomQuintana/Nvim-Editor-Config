-- import comment plugin safly
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
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and " "
        or (e == "warning" and " " or " " )
        s = s .. n .. sym
      end
      return s
    end
  }
})
