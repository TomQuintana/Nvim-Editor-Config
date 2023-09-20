-- local rainbow = require 'rainbow-delimiters'
--
-- Strategy = {
--   -- Use global strategy by default
--   [''] = rainbow.strategy['global'],
--   -- Use local for HTML
--   html = rainbow.strategy['local'],
--   -- Pick the strategy for LaTeX dynamically based on the buffer size
--   latex = function()
--     -- Disabled for very large files, global strategy for large files,
--     -- local strategy otherwise
--     if vim.fn.line('$') > 10000 then
--       return nil
--     elseif vim.fn.line('$') > 1000 then
--       return rainbow.strategy['global']
--     end
--     return rainbow.strategy['local']
--   end
-- }
--
-- rainbow.highlight = {
--   'RainbowDelimiterYellow',
--   'RainbowDelimiterBlue',
--   'RainbowDelimiterOrange',
--   'RainbowDelimiterGreen',
--   'RainbowDelimiterViolet',
--   'RainbowDelimiterCyan',
--   'RainbowDelimiterRed',
-- }
--
-- rainbow = {
--   blacklist = {
--     'c',
--     'cpp',
--     'tsx'
--   }
-- }
--

require 'rainbow-delimiters.setup' {
        query = {
            [''] = 'rainbow-delimiters',
            latex = 'rainbow-blocks',
        },
        highlight = {
            'RainbowDelimiterYellow',
            'RainbowDelimiterRed',
            'RainbowDelimiterBlue',
            'RainbowDelimiterOrange',
            'RainbowDelimiterGreen',
            'RainbowDelimiterViolet',
            'RainbowDelimiterCyan',
        },
        blacklist = {'c', 'cpp'},
    }

