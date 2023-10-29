-- local colors = {
--     background = '#282c34',
--     foreground = '#abb2bf',
--     comment = '#5c6370',
--     keyword = '#c678dd',
--     string = '#98c379',
--     function_name = '#61afef',
--     -- Add more syntax group colors as needed
-- }

--TODO:

local colors = {
    background = '#282c34',
    foreground = '#abb2bf',
    comment = '#0D39DE',
    keyword = '#c678dd',
    string = '#98c379',
    function_name = '#61afef',
    variable = '#e06c75',
    number = '#d19a66',
    operator = '#56b6c2',
    selection = '#3e4452',
    line_numbers = '#4b5263',
    cursor = '#528bff',
    brackets = '#abb2bf',
    guides = '#3e4452',
    gutter = '#282c34',
}


vim.cmd('hi Normal guibg=' .. colors.background .. ' guifg=' .. colors.foreground)
vim.cmd('hi Comment guifg=' .. colors.comment)
vim.cmd('hi Keyword guifg=' .. colors.keyword)
vim.cmd('hi String guifg=' .. colors.string)
vim.cmd('hi Function guifg=' .. colors.function_name)
