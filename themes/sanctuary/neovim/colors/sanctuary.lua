-- Sanctuary — light, cathedral blue with loot-color syntax accents
-- Part of the Sanctuary/Hell theme pair.

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end
vim.g.colors_name = "sanctuary"
vim.o.background = "light"
vim.o.termguicolors = true

local c = {
	-- Chrome (flips between Sanctuary/Hell)
	bg        = "#F2F3F5",
	bg_alt    = "#E6E9EF",
	bg_panel  = "#D6DBE5",
	bg_sel    = "#C5CED9",
	border    = "#B8C0CC",
	fg        = "#1B2430",
	fg_alt    = "#4A5568",
	muted     = "#4F596A",
	subtle    = "#606B78",
	cursor    = "#0F1419",

	-- Signature
	signature = "#3B6EA8", -- cathedral blue

	-- Loot colors (shared across Sanctuary/Hell, muted for light)
	common    = "#1B2430", -- white rarity → text
	magic     = "#3B6EA8", -- blue
	rare      = "#B8860B", -- yellow / aged gold
	legendary = "#C2591A", -- orange / amber ember
	unique    = "#6A4A9E", -- purple / lavender

	-- Semantic
	green     = "#4A8C5A",
	red       = "#B03A3A",
	cyan      = "#3C8291",
	diff_add  = "#D5E8D4",
	diff_chg  = "#FFECD1",
	diff_del  = "#F8D7DA",
}

local hl = function(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

-- Editor UI
hl("Normal",        { fg = c.fg, bg = c.bg })
hl("NormalFloat",   { fg = c.fg, bg = c.bg_alt })
hl("NormalNC",      { fg = c.fg, bg = c.bg })
hl("FloatBorder",   { fg = c.border, bg = c.bg_alt })
hl("Cursor",        { fg = c.bg, bg = c.cursor })
hl("CursorLine",    { bg = c.bg_alt })
hl("CursorColumn",  { bg = c.bg_alt })
hl("ColorColumn",   { bg = c.bg_alt })
hl("LineNr",        { fg = c.subtle })
hl("CursorLineNr",  { fg = c.signature, bold = true })
hl("SignColumn",    { bg = c.bg })
hl("Folded",        { fg = c.muted, bg = c.bg_alt })
hl("FoldColumn",    { fg = c.subtle, bg = c.bg })
hl("VertSplit",     { fg = c.border })
hl("WinSeparator",  { fg = c.border })
hl("StatusLine",    { fg = c.fg, bg = c.bg_panel })
hl("StatusLineNC",  { fg = c.muted, bg = c.bg_alt })
hl("TabLine",       { fg = c.muted, bg = c.bg_alt })
hl("TabLineSel",    { fg = c.bg, bg = c.signature, bold = true })
hl("TabLineFill",   { bg = c.bg_alt })
hl("Pmenu",         { fg = c.fg, bg = c.bg_alt })
hl("PmenuSel",      { fg = c.bg, bg = c.signature, bold = true })
hl("PmenuSbar",     { bg = c.bg_panel })
hl("PmenuThumb",    { bg = c.signature })
hl("WildMenu",      { fg = c.bg, bg = c.signature })
hl("Search",        { fg = c.bg, bg = c.rare })
hl("IncSearch",     { fg = c.bg, bg = c.legendary })
hl("CurSearch",     { fg = c.bg, bg = c.legendary, bold = true })
hl("Visual",        { bg = c.bg_sel })
hl("VisualNOS",     { bg = c.bg_sel })
hl("MatchParen",    { fg = c.legendary, bold = true, underline = true })
hl("Directory",     { fg = c.signature })
hl("Title",         { fg = c.signature, bold = true })
hl("NonText",       { fg = c.subtle })
hl("SpecialKey",    { fg = c.subtle })
hl("Whitespace",    { fg = c.border })
hl("EndOfBuffer",   { fg = c.bg })
hl("Conceal",       { fg = c.muted })
hl("ErrorMsg",      { fg = c.red, bold = true })
hl("WarningMsg",    { fg = c.rare, bold = true })
hl("ModeMsg",       { fg = c.fg, bold = true })
hl("MoreMsg",       { fg = c.signature })
hl("Question",      { fg = c.signature })
hl("SpellBad",      { sp = c.red, undercurl = true })
hl("SpellCap",      { sp = c.rare, undercurl = true })
hl("SpellLocal",    { sp = c.cyan, undercurl = true })
hl("SpellRare",     { sp = c.unique, undercurl = true })

-- Standard syntax
hl("Comment",       { fg = c.muted, italic = true })
hl("Constant",      { fg = c.legendary })
hl("String",        { fg = c.green })
hl("Character",     { fg = c.green })
hl("Number",        { fg = c.legendary })
hl("Float",         { fg = c.legendary })
hl("Boolean",       { fg = c.legendary, bold = true })
hl("Identifier",    { fg = c.fg })
hl("Function",      { fg = c.magic })
hl("Statement",     { fg = c.unique })
hl("Conditional",   { fg = c.unique })
hl("Repeat",        { fg = c.unique })
hl("Label",         { fg = c.unique })
hl("Operator",      { fg = c.fg_alt })
hl("Keyword",       { fg = c.unique, bold = true })
hl("Exception",     { fg = c.red, bold = true })
hl("PreProc",       { fg = c.cyan })
hl("Include",       { fg = c.cyan })
hl("Define",        { fg = c.cyan })
hl("Macro",         { fg = c.cyan })
hl("PreCondit",     { fg = c.cyan })
hl("Type",          { fg = c.rare })
hl("StorageClass",  { fg = c.rare })
hl("Structure",     { fg = c.rare })
hl("Typedef",       { fg = c.rare })
hl("Special",       { fg = c.legendary })
hl("SpecialChar",   { fg = c.legendary })
hl("Tag",           { fg = c.magic })
hl("Delimiter",     { fg = c.fg_alt })
hl("SpecialComment",{ fg = c.cyan, italic = true })
hl("Debug",         { fg = c.red })
hl("Underlined",    { fg = c.magic, underline = true })
hl("Todo",          { fg = c.bg, bg = c.rare, bold = true })
hl("Error",         { fg = c.red, bold = true })

-- Diff
hl("DiffAdd",       { bg = c.diff_add })
hl("DiffChange",    { bg = c.diff_chg })
hl("DiffDelete",    { bg = c.diff_del, fg = c.red })
hl("DiffText",      { bg = c.diff_chg, bold = true })
hl("diffAdded",     { fg = c.green })
hl("diffRemoved",   { fg = c.red })
hl("diffChanged",   { fg = c.legendary })

-- Treesitter
hl("@comment",            { link = "Comment" })
hl("@comment.documentation", { fg = c.muted, italic = true })
hl("@comment.todo",       { fg = c.bg, bg = c.rare, bold = true })
hl("@comment.error",      { fg = c.bg, bg = c.red, bold = true })
hl("@comment.warning",    { fg = c.bg, bg = c.legendary, bold = true })
hl("@comment.note",       { fg = c.bg, bg = c.magic, bold = true })
hl("@punctuation",        { fg = c.fg_alt })
hl("@punctuation.bracket",{ fg = c.fg_alt })
hl("@punctuation.delimiter", { fg = c.fg_alt })
hl("@punctuation.special",{ fg = c.legendary })
hl("@constant",           { fg = c.legendary })
hl("@constant.builtin",   { fg = c.legendary, bold = true })
hl("@constant.macro",     { fg = c.cyan })
hl("@string",             { fg = c.green })
hl("@string.escape",      { fg = c.legendary })
hl("@string.regex",       { fg = c.legendary })
hl("@string.special",     { fg = c.legendary })
hl("@character",          { fg = c.green })
hl("@number",             { fg = c.legendary })
hl("@boolean",            { fg = c.legendary, bold = true })
hl("@float",              { fg = c.legendary })
hl("@function",           { fg = c.magic })
hl("@function.builtin",   { fg = c.magic, italic = true })
hl("@function.call",      { fg = c.magic })
hl("@function.macro",     { fg = c.cyan })
hl("@function.method",    { fg = c.magic })
hl("@function.method.call", { fg = c.magic })
hl("@constructor",        { fg = c.rare })
hl("@parameter",          { fg = c.fg, italic = true })
hl("@keyword",            { fg = c.unique, bold = true })
hl("@keyword.function",   { fg = c.unique, bold = true })
hl("@keyword.operator",   { fg = c.unique })
hl("@keyword.return",     { fg = c.unique, bold = true })
hl("@keyword.conditional",{ fg = c.unique })
hl("@keyword.repeat",     { fg = c.unique })
hl("@keyword.import",     { fg = c.cyan })
hl("@keyword.exception",  { fg = c.red, bold = true })
hl("@conditional",        { fg = c.unique })
hl("@repeat",             { fg = c.unique })
hl("@label",              { fg = c.unique })
hl("@operator",           { fg = c.fg_alt })
hl("@exception",          { fg = c.red, bold = true })
hl("@variable",           { fg = c.fg })
hl("@variable.builtin",   { fg = c.legendary, italic = true })
hl("@variable.parameter", { fg = c.fg, italic = true })
hl("@variable.member",    { fg = c.fg })
hl("@property",           { fg = c.fg })
hl("@field",              { fg = c.fg })
hl("@namespace",          { fg = c.rare })
hl("@module",             { fg = c.rare })
hl("@type",               { fg = c.rare })
hl("@type.builtin",       { fg = c.rare, italic = true })
hl("@type.definition",    { fg = c.rare, bold = true })
hl("@attribute",          { fg = c.legendary })
hl("@tag",                { fg = c.magic })
hl("@tag.attribute",      { fg = c.legendary, italic = true })
hl("@tag.delimiter",      { fg = c.fg_alt })
hl("@symbol",             { fg = c.unique })
-- Markdown
hl("@markup.heading",       { fg = c.signature, bold = true })
hl("@markup.heading.1",     { fg = c.signature, bold = true })
hl("@markup.heading.2",     { fg = c.magic, bold = true })
hl("@markup.heading.3",     { fg = c.rare, bold = true })
hl("@markup.heading.4",     { fg = c.legendary, bold = true })
hl("@markup.heading.5",     { fg = c.unique, bold = true })
hl("@markup.heading.6",     { fg = c.cyan, bold = true })
hl("@markup.strong",        { bold = true })
hl("@markup.italic",        { italic = true })
hl("@markup.strikethrough", { strikethrough = true })
hl("@markup.underline",     { underline = true })
hl("@markup.link",          { fg = c.magic, underline = true })
hl("@markup.link.url",      { fg = c.cyan, underline = true })
hl("@markup.link.label",    { fg = c.magic })
hl("@markup.list",          { fg = c.legendary })
hl("@markup.quote",         { fg = c.muted, italic = true })
hl("@markup.raw",           { fg = c.green })
hl("@markup.math",          { fg = c.legendary })

-- Markdown heading backgrounds (render-markdown.nvim / headlines.nvim)
hl("Headline",            { bg = c.bg_alt })
hl("Headline1",           { fg = c.signature, bg = "#BBCADD", bold = true })
hl("Headline2",           { fg = c.legendary, bg = "#DDC5B9", bold = true })
hl("Headline3",           { fg = c.rare,      bg = "#DAD0B6", bold = true })
hl("Headline4",           { fg = c.magic,     bg = "#BBCADD", bold = true })
hl("Headline5",           { fg = c.unique,    bg = "#C7C1DB", bold = true })
hl("Headline6",           { fg = c.cyan,      bg = "#BBCFD8", bold = true })
hl("RenderMarkdownH1",    { fg = c.signature, bold = true })
hl("RenderMarkdownH2",    { fg = c.legendary, bold = true })
hl("RenderMarkdownH3",    { fg = c.rare,      bold = true })
hl("RenderMarkdownH4",    { fg = c.magic,     bold = true })
hl("RenderMarkdownH5",    { fg = c.unique,    bold = true })
hl("RenderMarkdownH6",    { fg = c.cyan,      bold = true })
hl("RenderMarkdownH1Bg",  { bg = "#BBCADD" })
hl("RenderMarkdownH2Bg",  { bg = "#DDC5B9" })
hl("RenderMarkdownH3Bg",  { bg = "#DAD0B6" })
hl("RenderMarkdownH4Bg",  { bg = "#BBCADD" })
hl("RenderMarkdownH5Bg",  { bg = "#C7C1DB" })
hl("RenderMarkdownH6Bg",  { bg = "#BBCFD8" })
hl("RenderMarkdownCode",         { bg = c.bg_alt })
hl("RenderMarkdownCodeInline",   { fg = c.green, bg = c.bg_alt })
hl("RenderMarkdownBullet",       { fg = c.legendary })
hl("RenderMarkdownQuote",        { fg = c.muted, italic = true })
hl("RenderMarkdownDash",         { fg = c.border })
hl("RenderMarkdownTableHead",    { fg = c.signature, bold = true })
hl("RenderMarkdownTableRow",     { fg = c.fg })
hl("RenderMarkdownLink",         { fg = c.magic, underline = true })

-- LSP / Diagnostics
hl("DiagnosticError",       { fg = c.red })
hl("DiagnosticWarn",        { fg = c.rare })
hl("DiagnosticInfo",        { fg = c.magic })
hl("DiagnosticHint",        { fg = c.cyan })
hl("DiagnosticOk",          { fg = c.green })
hl("DiagnosticVirtualTextError", { fg = c.red, bg = c.bg_alt, italic = true })
hl("DiagnosticVirtualTextWarn",  { fg = c.rare, bg = c.bg_alt, italic = true })
hl("DiagnosticVirtualTextInfo",  { fg = c.magic, bg = c.bg_alt, italic = true })
hl("DiagnosticVirtualTextHint",  { fg = c.cyan, bg = c.bg_alt, italic = true })
hl("DiagnosticUnderlineError",   { sp = c.red, undercurl = true })
hl("DiagnosticUnderlineWarn",    { sp = c.rare, undercurl = true })
hl("DiagnosticUnderlineInfo",    { sp = c.magic, undercurl = true })
hl("DiagnosticUnderlineHint",    { sp = c.cyan, undercurl = true })
hl("LspReferenceText",      { bg = c.bg_sel })
hl("LspReferenceRead",      { bg = c.bg_sel })
hl("LspReferenceWrite",     { bg = c.bg_sel, bold = true })
hl("LspSignatureActiveParameter", { fg = c.legendary, bold = true })

-- Git signs / gitgutter
hl("GitSignsAdd",           { fg = c.green })
hl("GitSignsChange",        { fg = c.legendary })
hl("GitSignsDelete",        { fg = c.red })
hl("GitGutterAdd",          { fg = c.green })
hl("GitGutterChange",       { fg = c.legendary })
hl("GitGutterDelete",       { fg = c.red })

-- Telescope
hl("TelescopeNormal",       { fg = c.fg, bg = c.bg_alt })
hl("TelescopeBorder",       { fg = c.border, bg = c.bg_alt })
hl("TelescopePromptNormal", { fg = c.fg, bg = c.bg_panel })
hl("TelescopePromptBorder", { fg = c.signature, bg = c.bg_panel })
hl("TelescopePromptTitle",  { fg = c.bg, bg = c.signature, bold = true })
hl("TelescopePreviewTitle", { fg = c.bg, bg = c.magic, bold = true })
hl("TelescopeResultsTitle", { fg = c.bg, bg = c.rare, bold = true })
hl("TelescopeSelection",    { fg = c.fg, bg = c.bg_sel, bold = true })
hl("TelescopeMatching",     { fg = c.legendary, bold = true })

-- NvimTree / Neo-tree
hl("NvimTreeNormal",          { fg = c.fg, bg = c.bg_alt })
hl("NvimTreeFolderName",      { fg = c.signature })
hl("NvimTreeOpenedFolderName",{ fg = c.signature, bold = true })
hl("NvimTreeFolderIcon",      { fg = c.signature })
hl("NvimTreeRootFolder",      { fg = c.unique, bold = true })
hl("NvimTreeGitDirty",        { fg = c.legendary })
hl("NvimTreeGitNew",          { fg = c.green })
hl("NvimTreeGitDeleted",      { fg = c.red })
hl("NeoTreeNormal",           { fg = c.fg, bg = c.bg_alt })
hl("NeoTreeDirectoryName",    { fg = c.signature })
hl("NeoTreeDirectoryIcon",    { fg = c.signature })
hl("NeoTreeRootName",         { fg = c.unique, bold = true })
hl("NeoTreeGitModified",      { fg = c.legendary })
hl("NeoTreeGitAdded",         { fg = c.green })
hl("NeoTreeGitDeleted",       { fg = c.red })

-- WhichKey
hl("WhichKey",          { fg = c.magic })
hl("WhichKeyGroup",     { fg = c.unique })
hl("WhichKeyDesc",      { fg = c.fg })
hl("WhichKeySeparator", { fg = c.muted })
hl("WhichKeyFloat",     { bg = c.bg_alt })
hl("WhichKeyBorder",    { fg = c.border, bg = c.bg_alt })

-- Indent blankline
hl("IblIndent",     { fg = c.border })
hl("IblScope",      { fg = c.signature })

-- Noice / notify
hl("NoiceCmdlineIcon",     { fg = c.signature })
hl("NoiceCmdlinePopupBorder", { fg = c.signature })
hl("NotifyERRORBorder",    { fg = c.red })
hl("NotifyWARNBorder",     { fg = c.rare })
hl("NotifyINFOBorder",     { fg = c.magic })
hl("NotifyDEBUGBorder",    { fg = c.muted })
hl("NotifyTRACEBorder",    { fg = c.unique })
hl("NotifyERRORIcon",      { fg = c.red })
hl("NotifyWARNIcon",       { fg = c.rare })
hl("NotifyINFOIcon",       { fg = c.magic })
hl("NotifyDEBUGIcon",      { fg = c.muted })
hl("NotifyTRACEIcon",      { fg = c.unique })

-- CMP
hl("CmpItemAbbr",            { fg = c.fg })
hl("CmpItemAbbrMatch",       { fg = c.signature, bold = true })
hl("CmpItemAbbrMatchFuzzy",  { fg = c.legendary, bold = true })
hl("CmpItemKindFunction",    { fg = c.magic })
hl("CmpItemKindMethod",      { fg = c.magic })
hl("CmpItemKindVariable",    { fg = c.fg })
hl("CmpItemKindKeyword",     { fg = c.unique })
hl("CmpItemKindClass",       { fg = c.rare })
hl("CmpItemKindInterface",   { fg = c.rare })
hl("CmpItemKindSnippet",     { fg = c.legendary })
hl("CmpItemKindText",        { fg = c.fg_alt })

-- Terminal ANSI colors inside :terminal
vim.g.terminal_color_0  = "#1B2430"
vim.g.terminal_color_1  = "#B03A3A"
vim.g.terminal_color_2  = "#4A8C5A"
vim.g.terminal_color_3  = "#B8860B"
vim.g.terminal_color_4  = "#3B6EA8"
vim.g.terminal_color_5  = "#6A4A9E"
vim.g.terminal_color_6  = "#3C8291"
vim.g.terminal_color_7  = "#4A5568"
vim.g.terminal_color_8  = "#4F596A"
vim.g.terminal_color_9  = "#D04B4B"
vim.g.terminal_color_10 = "#5EA070"
vim.g.terminal_color_11 = "#C2591A"
vim.g.terminal_color_12 = "#4A7FBF"
vim.g.terminal_color_13 = "#7C5EB0"
vim.g.terminal_color_14 = "#4A9DAE"
vim.g.terminal_color_15 = "#0F1419"
