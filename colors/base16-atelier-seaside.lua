-- base16.lua (http//github.com/tami5/base16.lua)
-- based on base16-vim (http//github.com/chriskempson/base16-vim)
-- Atelier Seaside scheme by Bram de Haan (http://atelierbramdehaan.nl)
-- stylua: ignore start

--- Set color name
vim.g.colors_name ='base16-atelier-seaside'
--- GUI color definitions
vim.g.base16_codes = {
  ["00"] = "131513",
  ["01"] = "242924",
  ["02"] = "5e6e5e",
  ["03"] = "687d68",
  ["04"] = "809980",
  ["05"] = "8ca68c",
  ["06"] = "cfe8cf",
  ["07"] = "f4fbf4",
  ["08"] = "e6193c",
  ["09"] = "87711d",
  ["0A"] = "98981b",
  ["0B"] = "29a329",
  ["0C"] = "1999b3",
  ["0D"] = "3d62f5",
  ["0E"] = "ad2bee",
  ["0F"] = "e619c3",
}
-- Neovim terminal colours
vim.g.terminal_color_0 = "#131513"
vim.g.terminal_color_1 = "#e6193c"
vim.g.terminal_color_2 = "#29a329"
vim.g.terminal_color_3 = "#98981b"
vim.g.terminal_color_4 = "#3d62f5"
vim.g.terminal_color_5 = "#ad2bee"
vim.g.terminal_color_6 = "#1999b3"
vim.g.terminal_color_7 = "#8ca68c"
vim.g.terminal_color_8 = "#687d68"
vim.g.terminal_color_9 = "#e6193c"
vim.g.terminal_color_10 = "#29a329"
vim.g.terminal_color_11 = "#98981b"
vim.g.terminal_color_12 = "#3d62f5"
vim.g.terminal_color_13 = "#ad2bee"
vim.g.terminal_color_14 = "#1999b3"
vim.g.terminal_color_15 = "#f4fbf4"

if vim.o.background == "light" then
  vim.g.terminal_color_background = "#8ca68c"
  vim.g.terminal_color_foreground = "#29a329"
else
  vim.g.terminal_color_background = "#131513"
  vim.g.terminal_color_foreground = "#ad2bee"
end

vim.g.base16_colors = {
  bg            = '#131513',
  bg_dark       = '#242924',
  bg_highlight  = '#5e6e5e',
  comment       = '#687d68',
  fg_dark       = '#809980',
  fg            = '#8ca68c',
  fg_gutter     = '#cfe8cf',
  fg_light      = '#f4fbf4',  -- TODO: this doesn't make sesne

  red           = '#e6193c',
  orange        = '#87711d',
  yellow        = '#98981b',
  green         = '#29a329',
  cyan          = '#1999b3',
  blue          = '#3d62f5',
  purple        = '#ad2bee',
  magenta       = '#ad2bee'
}

local HI = require'base16_indexer'(vim.g.base16_codes)

vim.cmd [[
  highlight clear
  syntax reset
]]

-- Vim editor colors ----------------------------------------------------------
HI.Normal                 = { fg = "05", bg = "00" }
HI.NormalFloat            = { fg = "05", bg = "00" }
HI.Bold                   = { attr = "bold" }
HI.Debug                  = { fg = "08" }
HI.Directory              = { fg = "0D" }
HI.Error                  = { fg = "08", bg = "00" }
HI.ErrorMsg               = { fg = "08", bg = "00" }
HI.Exception              = { fg = "08" }
HI.FoldColumn             = { fg = "0C", bg = "01" }
HI.Folded                 = { fg = "03", bg = "01" }
HI.IncSearch              = { fg = "01", bg = "09", attr = "none" }
HI.Italic                 = { attr = "italic" }
HI.Macro                  = { fg = "08" }
HI.MatchParen             = { fg = "0A", bg = "00", attr = "bold" }
HI.ModeMsg                = { fg = "0B" }
HI.MoreMsg                = { fg = "0B" }
HI.Question               = { fg = "0D" }
HI.Search                 = { fg = "01", bg = "0A" }
HI.Substitute             = { fg = "01", bg = "0A", attr = "none" }
HI.SpecialKey             = { fg = "03" }
HI.TooLong                = { fg = "08" }
HI.Underlined             = { fg = "08" }
HI.Visual                 = { bg = "02" }
HI.VisualNOS              = { fg = "08" }
HI.WarningMsg             = { fg = "08" }
HI.WildMenu               = { fg = "00", bg = "05" }
HI.Title                  = { fg = "0D", attr = "bold" }
HI.Conceal                = { fg = "0D", bg = "00" }
HI.Cursor                 = { fg = "00", bg = "05", attr = "inverse" }
HI.NonText                = { fg = "03" }
HI.Whitespace             = { fg = "03" }
HI.LineNr                 = { fg = "03", bg = "00" }
HI.LineNrNC               = { fg = "03", bg = "01" }
HI.LineNrSel              = { fg = "02", bg = "00" }
HI.SignColumn             = { fg = "02", bg = "00" }
HI.SignColumnNC           = { fg = "02", bg = "01" }
HI.StatusLine             = { fg = "04", bg = "01", attr = "bold" }
HI.StatusLineNC           = { fg = "05", bg = "01", attr = "bold" }
HI.VertSplit              = { fg = "02", bg = "00", attr = "none"}
HI.ColorColumn            = { bg = "01", attr = "none" }
HI.CursorColumn           = { bg = "01", attr = "none" }
HI.CursorLine             = { bg = "01", attr = "none" }
HI.CursorLineNr           = { fg = "03", bg = "01", attr = "none" }
HI.QuickFixLine           = { bg = "01", attr = "none" }
HI.Pmenu                  = { fg = "05", bg = "00" }
HI.PmenuSel               = { fg = "05", bg = "02" }
HI.PmenuSbar              = { fg = "05", bg = "01" }
HI.PmenuThumb             = { fg = "03", bg = "02" }
HI.TabLine                = { fg = "03", bg = "00", attr = "none" }
HI.TabLineFill            = { fg = "01", bg = "00", attr = "none" }
HI.TabLineSel             = { fg = "05", bg = "01", attr = "none" }
-- Standard syntax highlighting -----------------------------------------------
HI.Boolean                = { fg = "09" }
HI.Character              = { fg = "08" }
HI.Comment                = { fg = "03" }
HI.Conditional            = { fg = "0E" }
HI.Constant               = { fg = "09" }
HI.Define                 = { fg = "0E", attr = "none" }
HI.Delimiter              = { fg = "08", attr = "bold" }
HI.Float                  = { fg = "09" }
HI.Function               = { fg = "0D" }
HI.Identifier             = { fg = "08", attr = "none" }
HI.Include                = { fg = "0D" }
HI.Keyword                = { fg = "0E" }
HI.Label                  = { fg = "0A" }
HI.Number                 = { fg = "09" }
HI.Operator               = { fg = "0F", attr = "none" }
HI.PreProc                = { fg = "0A" }
HI.Repeat                 = { fg = "0A" }
HI.Special                = { fg = "0C" }
HI.SpecialChar            = { fg = "0F" }
HI.Statement              = { fg = "08" }
HI.StorageClass           = { fg = "0A" }
HI.String                 = { fg = "0B" }
HI.Structure              = { fg = "0E" }
HI.Tag                    = { fg = "0A" }
HI.Todo                   = { fg = "0A", bg = "01" }
HI.Type                   = { fg = "0A", "", "0A" }
HI.Typedef                = { fg = "0A", "", "0A" }
-- Standard highlights to be used by plugins ----------------------------------
HI.GitAddSign             = { fg = "0B" }
HI.GitChangeSign          = { fg = "04" }
HI.GitDeleteSign          = { fg = "08" }
HI.GitChangeDeleteSign    = { fg = "04" }
HI.ErrorSign              = { fg = "08" }
HI.WarningSign            = { fg = "09" }
HI.InfoSign               = { fg = "0D" }
HI.HintSign               = { fg = "0C" }
HI.ErrorFloat             = { fg = "08", bg = "02" }
HI.WarningFloat           = { fg = "09", bg = "02" }
HI.InfoFloat              = { fg = "0D", bg = "02" }
HI.HintFloat              = { fg = "0C", bg = "02" }
HI.ErrorHighlight         = { fg = "00", bg = "08", attr = "underline", sp = "08", cterm = true }
HI.WarningHighlight       = { fg = "00", bg = "09", attr = "underline", sp = "09", cterm = true }
HI.InfoHighlight          = { fg = "00", bg = "0D", attr = "underline", sp = "0D", cterm = true }
HI.HintHighlight          = { fg = "00", bg = "0C", attr = "underline", sp = "0C", cterm = true }
HI.SpellBad               = { fg = "05", attr = "underline" }
HI.SpellLocal             = { fg = "00", bg = "0C", attr = "undercurl", sp = "0C", cterm = true }
HI.SpellCap               = { fg = "00", bg = "0D", attr = "undercurl", sp = "0D", cterm = true }
HI.SpellRare              = { fg = "00", bg = "0E", attr = "undercurl", sp = "0E", cterm = true }
HI.ReferenceText          = { fg = "01", bg = "0A" }
HI.ReferenceRead          = { fg = "01", bg = "0B" }
HI.ReferenceWrite         = { fg = "01", bg = "08" }
-- C highlighting -------------------------------------------------------------
HI.cOperator              = { fg = "0C" }
HI.cPreCondit             = { fg = "0E" }
-- C# highlighting ------------------------------------------------------------
HI.csClass                = { fg = "0A" }
HI.csAttribute            = { fg = "0A" }
HI.csModifier             = { fg = "0E" }
HI.csType                 = { fg = "08" }
HI.csUnspecifiedStatement = { fg = "0D" }
HI.csContextualStatement  = { fg = "0E" }
HI.csNewDecleration       = { fg = "08" }
HI.CocHighlightRead       = { fg = "0B", bg = "01" }
HI.CocHighlightText       = { fg = "0A", bg = "01" }
HI.CocHighlightWrite      = { fg = "08", bg = "01" }
HI.CocListMode            = { fg = "01", bg = "0B", attr = "bold" }
HI.CocListPath            = { fg = "01", bg = "0B" }
HI.CocSessionsName        = { fg = "05" }
-- CSS highlighting -----------------------------------------------------------
HI.cssBraces              = { fg = "05" }
HI.cssClassName           = { fg = "0E" }
HI.cssColor               = { fg = "0C" }
-- Diff highlighting ----------------------------------------------------------
HI.DiffAdd                = { fg = "0B", bg = "02" }
HI.DiffChange             = { fg = "05", bg = "02" }
HI.DiffDelete             = { fg = "08", bg = "02" }
HI.DiffText               = { fg = "0D", bg = "02" }
HI.DiffAdded              = { fg = "0B", bg = "00" }
HI.DiffFile               = { fg = "08", bg = "00" }
HI.DiffNewFile            = { fg = "0B", bg = "00" }
HI.DiffLine               = { fg = "0D", bg = "00" }
HI.DiffRemoved            = { fg = "08", bg = "00" }
-- Git highlighting -----------------------------------------------------------
HI.gitcommitOverflow      = { fg = "08" }
HI.gitcommitSummary       = { fg = "0B" }
HI.gitcommitComment       = { fg = "03" }
HI.gitcommitUntracked     = { fg = "03" }
HI.gitcommitDiscarded     = { fg = "03" }
HI.gitcommitSelected      = { fg = "03" }
HI.gitcommitHeader        = { fg = "0E" }
HI.gitcommitSelectedType  = { fg = "0D" }
HI.gitcommitUnmergedType  = { fg = "0D" }
HI.gitcommitDiscardedType = { fg = "0D" }
HI.gitcommitUntrackedFile = { fg = "0A" }
HI.gitcommitBranch        = { fg = "09", attr = "bold" }
HI.gitcommitUnmergedFile  = { fg = "08", attr = "bold" }
HI.gitcommitDiscardedFile = { fg = "08", attr = "bold" }
HI.gitcommitSelectedFile  = { fg = "0B", attr = "bold" }
-- HTML highlighting ----------------------------------------------------------
HI.htmlBold               = { fg = "05", attr = "bold" }
HI.htmlItalic             = { fg = "05", atrr = "italic" }
HI.htmlEndTag             = { fg = "05" }
HI.htmlTag                = { fg = "05" }
-- JavaScript highlighting ----------------------------------------------------
HI.javaScript             = { fg = "05" }
HI.javaScriptBraces       = { fg = "05" }
HI.javaScriptNumber       = { fg = "09" }
-- Mail highlighting ----------------------------------------------------------
HI.mailQuoted1            = { fg = "0A" }
HI.mailQuoted2            = { fg = "0B" }
HI.mailQuoted3            = { fg = "0E" }
HI.mailQuoted4            = { fg = "0C" }
HI.mailQuoted5            = { fg = "0D" }
HI.mailQuoted6            = { fg = "0A" }
HI.mailURL                = { fg = "0D" }
HI.mailEmail              = { fg = "0D" }
-- Markdown highlighting ------------------------------------------------------
HI.markdownCode           = { fg = "0B" }
HI.markdownError          = { fg = "05" }
HI.markdownCodeBlock      = { fg = "0B" }
HI.markdownBold           = { fg = "08", attr = "bold" }
HI.markdownBoldDelimiter  = { fg = "03" }
HI.markdownHeadingRule    = { attr = "bold" }
-- HI.markdownItalic      = { fg = "08", attr = "italic" }
HI.markdownItalicDelimiter  = { fg = "03" }
HI.markdownHeadingDelimiter = { fg = "04" }

-- NERDTree highlighting ------------------------------------------------------
HI.NERDTreeDirSlash       = { fg = "0D" }
HI.NERDTreeExecFile       = { fg = "05" }
-- PHP highlighting -----------------------------------------------------------
HI.phpMemberSelector      = { fg = "05" }
HI.phpComparison          = { fg = "05" }
HI.phpParent              = { fg = "05" }
HI.phpMethodsVar          = { fg = "0C" }
-- Python highlighting --------------------------------------------------------
HI.pythonOperator         = { fg = "0E" }
HI.pythonRepeat           = { fg = "0E" }
HI.pythonInclude          = { fg = "0E" }
HI.pythonStatement        = { fg = "0E" }
-- Ruby Highlighting ----------------------------------------------------------
HI.rubyAttribute          = { fg = "0D" }
HI.rubyConstant           = { fg = "0A" }
HI.rubyRegexp             = { fg = "0C" }
HI.rubySymbol             = { fg = "0B" }
HI.rubyStringDelimiter    = { fg = "0B" }
HI.rubyInterpolationDelimiter = { fg = "0F" }
-- SASS highlighting ----------------------------------------------------------
HI.sassidChar             = { fg = "08" }
HI.sassClassChar          = { fg = "09" }
HI.sassInclude            = { fg = "0E" }
HI.sassMixing             = { fg = "0E" }
HI.sassMixinName          = { fg = "0D" }
-- Startify highlighting ------------------------------------------------------
HI.StartifyBracket        = { fg = "03" }
HI.StartifyFile           = { fg = "07" }
HI.StartifyFooter         = { fg = "03" }
HI.StartifyHeader         = { fg = "0B" }
HI.StartifyNumber         = { fg = "09" }
HI.StartifyPath           = { fg = "03" }
HI.StartifySection        = { fg = "0E" }
HI.StartifySelect         = { fg = "0C" }
HI.StartifySlash          = { fg = "03" }
HI.StartifySpecial        = { fg = "03" }
-- Treesitter-refactor highlighting -------------------------------------------
HI.TSDefinition           = { bg = "03" }
HI.TSDefinitionUsage      = { bg = "02", attr = "none" }
HI.TSKeyword              = { fg = "0E", attr = "italic" }
-- HI.TSKeywordFunction      = { fg = "0E", attr = "italic" }
HI.TSConstBuiltin         = { fg = "09", attr = 'italic' }
HI.TSVariableBuiltin      = { fg = "09", attr = 'italic' }
HI.TSConstant             = { fg = "0E", attr = "none" }
HI.TSPunctBracket         = { fg = "03", attr = "bold" }
HI.TSParameter            = { fg = "05" }
HI.TSKeyword              = { fg = "0E" }
HI.TSConstant             = { fg = "0E" }
HI.TSProperty             = { fg = '0A' }
HI.LINK.TSComment         = "Comment"
-- Parans ---------------------------------------------------------------------
HI.clojureParen            = { fg = "03", attr = "bold" }
HI.NvimNestingParenthesis  = { fg = "03", attr = "bold" }
HI.FennelParen             = { fg = "03", attr = "bold" }
HI.JanetParen              = { fg = "03", attr = "bold" }
-- Java highlighting ----------------------------------------------------------
HI.javaOperator           = { fg = "0D" }
-- Fern Highlighting ---------------------------------------------------------
HI.FernBranchText           = { fg = '0D' }
-- Floatterm -----------------------------------------------------------------
HI.FloatermBorder           = { fg = "01", bg = "02" }
-- LspTrouble Highlighting ---------------------------------------------------
HI.LspTroubleText           = { fg = "04" }
HI.LspTroubleCount          = { fg = "0E", bg = "04" }
HI.LspTroubleNormal         = { fg = "04", bg = "00" }
-- Telescope Highlighting ----------------------------------------------------
HI.TelescopeBorder          = { fg = "02", bg = "00" }
HI.TelescopeMatching        = { fg = "08", bg = "00" }
HI.TelescopeNormal          = { fg = "05", bg = "00" }
HI.TelescopeSelection       = { fg = "07", bg = "00" }
-- LspSaga Highlighting ------------------------------------------------------
HI.DiagnosticError          = { fg = "08" }
HI.DiagnosticWarning        = { fg = "09" }
HI.DiagnosticInformation    = { fg = "04" }
HI.DiagnosticHint           = { fg = "04" }
HI.LspFloatWinNormal        = { bg = "01" }
HI.LspFloatWinBorder        = { fg = "02" }
HI.LspSagaBorderTitle       = { fg = "0C" }
HI.LspSagaHoverBorder       = { fg = "0D" }
HI.LspSagaRenameBorder      = { fg = "0B" }
HI.LspSagaDefPreviewBorder  = { fg = "0B" }
HI.LspSagaCodeActionBorder  = { fg = "0D" }
HI.LspSagaFinderSelection   = { fg = "04" }
HI.LspSagaCodeActionTitle   = { fg = "0D" }
HI.LspSagaCodeActionContent = { fg = "0E" }
HI.ReferencesCount          = { fg = "0E" }
HI.DefinitionCount          = { fg = "0E" }
HI.DefinitionIcon           = { fg = "0D" }
HI.ReferencesIcon           = { fg = "0D" }
HI.TargetWord               = { fg = "0C" }
-- Compe Highlights --------------------------------------------------------
HI.CompeDocumentation       = { fg = "05", bg = "00" }
HI.CompeDocumentationBorder = { fg = "02", bg = "00" }
-- LSP highlighting -----------------------------------------------------------
HI.LINK.LspDiagnosticsVirtualTextError   = "ErrorSign"
HI.LINK.LspDiagnosticsVirtualTextWarning = "WarningSign"
HI.LINK.LspDiagnosticsVirtualTextInfo    = "InfoSign"
HI.LINK.LspDiagnosticsVirtualTextHint    = "HintSign"
HI.LINK.LspDiagnosticsFloatingError      = "ErrorFloat"
HI.LINK.LspDiagnosticsFloatingWarning    = "WarningFloat"
HI.LINK.LspDiagnosticsFloatingInfo       = "InfoFloat"
HI.LINK.LspDiagnosticsFloatingHint       = "HintFloat"
HI.LINK.LspDiagnosticsUnderlineError     = "ErrorHighlight"
HI.LINK.LspDiagnosticsUnderlineWarning   = "WarningHighlight"
HI.LINK.LspDiagnosticsUnderlineInfo      = "InfoHighlight"
HI.LINK.LspDiagnosticsUnderlineHint      = "HintHighlight"
HI.LINK.LsoReferenceText                 = "ReferenceText"
HI.LINK.LsoReferenceRead                 = "ReferenceRead"
HI.LINK.LsoReferenceWrite                = "ReferenceWrite"
HI.LspDiagnosticsDefaultError            = { fg = "08" }
HI.LspDiagnosticsDefaultWarning          = { fg = "09" }
HI.LspDiagnosticsDefaultInformation      = { fg = "04" }
HI.LspDiagnosticsDefaultHint             = { fg = "04" }
HI.LspDiagnosticsVirtualTextHint         = { fg = "04" }


-- GitGutter highlighting -----------------------------------------------------
HI.LINK.GitGutterAdd                     = "GitAddSign"
HI.LINK.GitGutterChange                  = "GitChangeSign"
HI.LINK.GitGutterDelete                  = "GitDeleteSign"
HI.LINK.GitGutterChangeDelete            = "GitChangeDeleteSign"

-- stylua: ignore end
-- vim: filetype=lua
