-- Tailwind colours
-- <https://tailwindcss.com/docs/customizing-colors>

local white      = "#ffffff"

local cyan_50    = os.getenv("TW_CYAN_050")
local cyan_500   = os.getenv("TW_CYAN_500")
local cyan_700   = os.getenv("TW_CYAN_700")
local cyan_800   = os.getenv("TW_CYAN_800")
local cyan_900   = os.getenv("TW_CYAN_900")
local cyan_950   = os.getenv("TW_CYAN_950")

local red_600    = os.getenv("TW_RED_600")
local orange_500 = os.getenv("TW_ORANGE_500")
local amber_500  = os.getenv("TW_AMBER_500")
local lime_600   = os.getenv("TW_LIME_600")
local blue_500   = os.getenv("TW_BLUE_500")
local rose_400   = os.getenv("TW_ROSE_400")

vim.api.nvim_set_hl(0, "User1", { fg = amber_500 })
vim.api.nvim_set_hl(0, "User2", { fg = white, bold = true })
vim.api.nvim_set_hl(0, "User3", { fg = cyan_700 })

vim.api.nvim_set_hl(0, "Normal", { fg = white })
vim.api.nvim_set_hl(0, "Visual", { bg = cyan_800 })
vim.api.nvim_set_hl(0, "VisualNC", { link = "Visual" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
vim.api.nvim_set_hl(0, "LineNr", { fg = cyan_700 })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = amber_500 })
vim.api.nvim_set_hl(0, "CursorLine", { bg = cyan_900 })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = cyan_900 })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = cyan_950 })
vim.api.nvim_set_hl(0, "Error", { fg = red_600 })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = red_600 })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = orange_500 })
vim.api.nvim_set_hl(0, "ModeMsg", { fg = cyan_700 })
vim.api.nvim_set_hl(0, "MoreMsg", { link = "ModeMsg" })
vim.api.nvim_set_hl(0, "MsgSeparator", { bg = "NONE", fg = cyan_700 })
vim.api.nvim_set_hl(0, "Title", { fg = white, bold = true })
vim.api.nvim_set_hl(0, "Search", { bg = cyan_700, fg = white })
vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", { link = "Underlined" })
vim.api.nvim_set_hl(0, "helpCommand", { link = "Special" })
vim.api.nvim_set_hl(0, "helpExample", { link = "Special" })
vim.api.nvim_set_hl(0, "helpHeader", { bold = true })
vim.api.nvim_set_hl(0, "helpHyperTextEntry", { link = "Special" })
vim.api.nvim_set_hl(0, "helpHyperTextJump", { fg = cyan_500 })
vim.api.nvim_set_hl(0, "helpNote", { bold = true })
vim.api.nvim_set_hl(0, "helpOption", { link = "Special" })
vim.api.nvim_set_hl(0, "helpSectionDelim", { bold = true })
vim.api.nvim_set_hl(0, "helpURL", { fg = cyan_500 })

vim.api.nvim_set_hl(0, "Comment", { fg = cyan_700, italic = true })
vim.api.nvim_set_hl(0, "NonText", { fg = cyan_700 })

vim.api.nvim_set_hl(0, "Constant", { fg = white, bold = true })
vim.api.nvim_set_hl(0, "String", { fg = lime_600 })
vim.api.nvim_set_hl(0, "Character", { link = "String" })
vim.api.nvim_set_hl(0, "Number", { fg = rose_400 })
vim.api.nvim_set_hl(0, "Boolean", { link = "Constant" })
vim.api.nvim_set_hl(0, "Float", { fg = colour204 })

vim.api.nvim_set_hl(0, "Identifier", { fg = white })
vim.api.nvim_set_hl(0, "Function", { link = "Identifier" })

vim.api.nvim_set_hl(0, "Statement", { fg = white, bold = true })
vim.api.nvim_set_hl(0, "Conditional", { link = "Operator" })
vim.api.nvim_set_hl(0, "Repeat", { link = "Keyword" })
vim.api.nvim_set_hl(0, "Label", { link = "Special" })
vim.api.nvim_set_hl(0, "Operator", { fg = white })
vim.api.nvim_set_hl(0, "Keyword", { fg = white, bold = true })
vim.api.nvim_set_hl(0, "Exception", { bg = "DarkMagenta", fg = "FloralWhite" })

vim.api.nvim_set_hl(0, "PreProc", { link = "Identifier" })
vim.api.nvim_set_hl(0, "Include", { bg = "DarkMagenta", fg = "FloralWhite" })
vim.api.nvim_set_hl(0, "Define", { bg = "DarkMagenta", fg = "FloralWhite" })
vim.api.nvim_set_hl(0, "Macro", { bg = "DarkMagenta", fg = "FloralWhite" })
vim.api.nvim_set_hl(0, "PreCondit", { bg = "DarkMagenta", fg = "FloralWhite" })

vim.api.nvim_set_hl(0, "Type", { link = "Identifier" })
vim.api.nvim_set_hl(0, "StorageClass", { bg = "DarkMagenta", fg = "FloralWhite" })
vim.api.nvim_set_hl(0, "Structure", { link = "Type" })
vim.api.nvim_set_hl(0, "Typedef", { bg = "DarkMagenta", fg = "FloralWhite" })

vim.api.nvim_set_hl(0, "Special", { fg = amber_500 })
vim.api.nvim_set_hl(0, "SpecialChar", { link = "Special" })
vim.api.nvim_set_hl(0, "Tag", { bg = "DarkMagenta", fg = "FloralWhite" })
vim.api.nvim_set_hl(0, "Delimiter", { fg = cyan_700 })
vim.api.nvim_set_hl(0, "SpecialComment", { fg = white })
vim.api.nvim_set_hl(0, "Debug", { bg = "DarkMagenta", fg = "FloralWhite" })

vim.api.nvim_set_hl(0, "Underlined", { underline = true })

vim.api.nvim_set_hl(0, "Ignore", { bg = "DarkMagenta", fg = "FloralWhite" })

vim.api.nvim_set_hl(0, "Todo", { bold = true })

vim.api.nvim_set_hl(0, "Question", { fg = amber_500 })

vim.api.nvim_set_hl(0, "TelescopeSelection", { fg = white })
vim.api.nvim_set_hl(0, "TelescopeNormal", { fg = amber_500 })
vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = cyan_950 })
vim.api.nvim_set_hl(0, "TelescopePromptCounter", { fg = amber_500 })
vim.api.nvim_set_hl(0, "TelescopeMatching", { bold = true })

vim.api.nvim_set_hl(0, "Conceal", { bg = "NONE" })

vim.api.nvim_set_hl(0, "NormalFloat", { bg = cyan_900 })
vim.api.nvim_set_hl(0, "Pmenu", { bg = cyan_800, fg = white })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = cyan_700, fg = white })
vim.api.nvim_set_hl(0, "PmenuSbar", { bg = cyan_900 })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = cyan_50 })

vim.api.nvim_set_hl(0, "healthSuccess", { fg = lime_600 })
vim.api.nvim_set_hl(0, "healthHeadingChar", { bg = "DarkMagenta", fg = "FloralWhite" })

vim.api.nvim_set_hl(0, "@constant.bash", { link = "Identifier" })
vim.api.nvim_set_hl(0, "@keyword.directive.bash", { link = "Comment" })
vim.api.nvim_set_hl(0, "@punctuation.special.bash", { link = "Identifier" })

vim.api.nvim_set_hl(0, "@constructor.haskell", { link = "Identifier" })

vim.api.nvim_set_hl(0, "@constructor.javascript", { link = "Identifier" })
vim.api.nvim_set_hl(0, "@keyword.directive.javascript", { fg = lime_600, bold = true })
vim.api.nvim_set_hl(0, "@string.escape.javascript", { bold = true })

vim.api.nvim_set_hl(0, "SpellBad", { sp = red_600, undercurl = true })
vim.api.nvim_set_hl(0, "SpellCap", { sp = blue_500, undercurl = true })
vim.api.nvim_set_hl(0, "SpellRare", { sp = rose_400, undercurl = true })
vim.api.nvim_set_hl(0, "SpellLocal", { sp = cyan_500, undercurl = true })

vim.api.nvim_set_hl(0, "@markup.link.vimdoc", { fg = cyan_500 })
vim.api.nvim_set_hl(0, "@variable.parameter.vimdoc", { fg = amber_500 })

vim.api.nvim_set_hl(0, "MasonHeader", { link = "Special" })
