-- Author: Tim Carlsson

local colors = {
    bg         = "#f5f7fa",
    bg_lighter = "#edf0f3",
    fg         = "#2d3748",
    green      = "#38a169",
    yellow     = "#b7791f",
    red        = "#e53e3e",
    orange     = "#c05621",
    cyan       = "#008b8b",
    slate      = "#718096",
    comment    = "#a0aec0",
    grey       = "#1a202c",
    cream      = "#744210",
}

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
vim.o.background = "light"
vim.g.colors_name = "cynosure-light"

local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- WIP
hl("Normal",  { fg = colors.fg, bg = colors.bg })
hl("Comment", { fg = colors.comment, italic = true })
hl("Visual",  { bg = colors.bg_lighter })

hl("Constant", { fg = colors.orange })
hl("String",   { fg = colors.green })
hl("Number",   { fg = colors.orange })
hl("Boolean",  { fg = colors.orange })
hl("Float",    { fg = colors.orange })

hl("Identifier", { fg = colors.fg })
hl("Preproc",    { fg = colors.fg })
hl("Function",   { fg = colors.grey })
hl("@variable",  { fg = colors.grey }) -- Or colors.cyan if you want variables to pop

hl("Statement",   { fg = colors.cyan })
hl("Conditional", { fg = colors.cyan })
hl("Repeat",      { fg = colors.cyan })
hl("Label",       { fg = colors.cyan })
hl("Operator",    { fg = colors.fg })
hl("Keyword",     { fg = colors.cyan, bold = true })
hl("Exception",   { fg = colors.cyan })

hl("Type",         { fg = colors.cream })
hl("StorageClass", { fg = colors.cream })
hl("Structure",    { fg = colors.cream })
hl("Typedef",      { fg = colors.cream })

hl("Special",        { fg = colors.fg })
hl("SpecialChar",    { fg = colors.fg })
hl("Tag",            { fg = colors.fg })
hl("Delimiter",      { fg = colors.fg })
hl("SpecialComment", { fg = colors.fg })
hl("Debug",          { fg = colors.fg })

hl("Underlined", { fg = colors.fg })
hl("Ignore",     { fg = colors.fg })
hl("Error",      { fg = colors.red })
hl("Todo",       { fg = colors.yellow })

hl("Added",   { fg = colors.green })
hl("Changed", { fg = colors.yellow })
hl("Removed", { fg = colors.red })

hl("LineNr",       { bg = colors.bg, fg = colors.slate })
hl("SignColumn",   { bg = colors.bg, fg = colors.slate })
hl("FoldColumn",   { bg = colors.bg, fg = colors.slate })
hl("CursorLine",   { bg = colors.bg })
hl("CursorLineNr", { bg = colors.bg, fg = colors.cyan })
hl("Directory",    { fg = colors.cyan })
hl("Question",     { fg = colors.orange })

hl("Tag", { fg = colors.fg })
hl("Ignore", { fg = colors.bg })

hl("NormalFloat", { fg = colors.fg, bg = colors.bg_lighter })
hl("FloatBorder", { fg = colors.cyan, bg = colors.bg_lighter })

hl("Pmenu",      { fg = colors.fg, bg = colors.bg_lighter })
hl("PmenuSel",   { fg = colors.bg, bg = colors.cyan, bold = true })
hl("PmenuSbar",  { bg = colors.bg_lighter })
hl("PmenuThumb", { bg = colors.slate })

hl("ModeMsg", { fg = colors.orange, bold = true })

hl("DiagnosticUnderlineError", { undercurl = true, sp = colors.red })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.yellow })
hl("DiagnosticVirtualTextError", { fg = colors.red, bg = "NONE" })
hl("DiagnosticVirtualTextWarn",  { fg = colors.yellow, bg = "NONE" })
hl("DiagnosticVirtualTextInfo",  { fg = colors.cyan, bg = "NONE" })
hl("DiagnosticVirtualTextHint",  { fg = colors.slate, bg = "NONE" })
