
local c = require('github.palette')

local hl = vim.api.nvim_set_hl
local theme = {}

theme.set_highlights = function()

  -- highlights
  hl(0, "Normal", { fg = c.fg, bg = c.bg })
  hl(0, "Cursor", { fg = c.bg, bg = c.cursor_bg })
  hl(0, "Visual", { fg = 'NONE', bg = c.visual_bg })
  hl(0, "Search", { fg = c.fg, bg = c.search_bg, bold=true, })
  hl(0, "Folded", { fg = c.fold_fg, bg = c.fold_bg, bold=true, })
  hl(0, "Title", { fg = c.warning, bg = 'NONE' })
  hl(0, "StatusLine", { link = 'StatusLineN3' })
  hl(0, "StatusLineNC", { fg = c.status_line_fg, bg = c.visual_bg, italic=true, })
  hl(0, "SpecialKey", { fg = c.special_key, bg = 'NONE', italic=true, })
  hl(0, "WarningMsg", { fg = c.warning, bg = 'NONE' })
  hl(0, "ErrorMsg", { fg = c.error, bg = c.error_bg, undercurl=true, })
  hl(0, "ColorColumn", { fg = 'NONE', bg = c.white_space })
  hl(0, "VertSplit", { fg = c.status_line_bg, bg = c.bg })
  hl(0, "LineNr", { fg = c.line_number, bg = c.bg })
  hl(0, "LineNrAbove", { fg = c.git_add, bg = c.bg })
  hl(0, "LineNrBelow", { fg = c.git_delete, bg = c.bg })
  hl(0, "EndOfBuffer", { fg = c.bg, bg = 'NONE' })
  hl(0, "Whitespace", { fg = c.white_space, bg = 'NONE' })
  hl(0, "CursorLine", { fg = 'NONE', bg = c.fold_bg })
  hl(0, "CursorLineNr", { fg = c.function_, bg = 'NONE', bold=true, })
  hl(0, "MatchParen", { fg = c.fg, bg = c.match_paren })
  hl(0, "FoldColumn", { link = 'Folded' })
  hl(0, "CursorColumn", { link = 'CursorLine' })
  hl(0, "NonText", { link = 'LineNr' })
  hl(0, "Directory", { fg = c.constant, bg = 'NONE' })

  -- floating-window
  hl(0, "Pmenu", { fg = c.fg, bg = c.float_bg })
  hl(0, "PmenuSel", { link = 'Visual' })
  hl(0, "PmenuSbar", { fg = c.line_number, bg = c.fold_bg })
  hl(0, "PmenuThumb", { fg = c.status_line_bg, bg = c.status_line_bg })
  hl(0, "PmenuBorder", { fg = c.float_bg, bg = c.float_bg })
  hl(0, "PmenuPadding", { fg = c.float_bg, bg = c.bg })
  hl(0, "PmenuTitle", { fg = c.fg, bg = c.float_bg, bold=true, })
  hl(0, "PmenuSeparator", { fg = c.visual_bg, bg = c.float_bg })
  hl(0, "PmenuEnd", { fg = c.float_bg, bg = c.float_bg })
  hl(0, "NormalFloat", { fg = 'NONE', bg = c.bg })
  hl(0, "FloatBorder", { link = 'PmenuBorder' })

  -- git
  hl(0, "DiffAdd", { fg = c.diff_add_fg, bg = c.diff_add_bg })
  hl(0, "DiffChange", { fg = 'NONE', bg = c.fold_bg })
  hl(0, "DiffText", { fg = c.diff_text_fg, bg = c.diff_text_bg })
  hl(0, "DiffDelete", { fg = c.diff_delete_fg, bg = c.diff_delete_bg })
  hl(0, "GitSignsAdd", { fg = c.git_add, bg = 'NONE' })
  hl(0, "GitSignsDelete", { fg = c.git_delete, bg = 'NONE' })
  hl(0, "GitSignsChange", { fg = c.git_change, bg = 'NONE' })

  -- syntax
  hl(0, "Ignore", { fg = c.fold_fg, bg = 'NONE' })
  hl(0, "Identifier", { fg = c.identifier, bg = 'NONE' })
  hl(0, "PreProc", { fg = c.preprocessor, bg = 'NONE', bold=true, })
  hl(0, "Comment", { fg = c.comment, bg = 'NONE' })
  hl(0, "Constant", { fg = c.constant, bg = 'NONE' })
  hl(0, "String", { fg = c.string, bg = 'NONE' })
  hl(0, "Function", { fg = c.function_, bg = 'NONE' })
  hl(0, "Statement", { fg = c.statement, bg = 'NONE' })
  hl(0, "Type", { fg = c.type, bg = 'NONE' })
  hl(0, "Number", { fg = c.number, bg = 'NONE' })
  hl(0, "Todo", { fg = c.white, bg = c.function_, bold=true, })
  hl(0, "Special", { fg = c.special, bg = 'NONE' })
  hl(0, "Label", { fg = c.fg, bg = 'NONE', bold=true, })
  hl(0, "StorageClass", { link = 'Label' })
  hl(0, "Structure", { link = 'Label' })
  hl(0, "TypeDef", { link = 'Label' })
  hl(0, "@variable", { link = 'Identifier' })
  hl(0, "@variable.member", { fg = c.type, bg = 'NONE' })
  hl(0, "@punctuation.delimiter", { fg = c.special, bg = 'NONE' })
  hl(0, "@punctuation.bracket", { link = '@punctuation.delimiter' })
  hl(0, "@variable.builtin", { link = '@punctuation.delimiter' })
  hl(0, "@operator", { fg = c.fg, bg = 'NONE' })
  hl(0, "@tag", { link = '@function' })
  hl(0, "@tag.attribute", { link = '@variable.member' })
  hl(0, "@tag.delimiter", { link = '@punctuation.delimiter' })

  -- lsp
  hl(0, "LspReferenceText", { fg = 'NONE', bg = c.lsp_reference_text_bg })
  hl(0, "LspReferenceRead", { link = 'LspReferenceText' })
  hl(0, "LspReferenceWrite", { link = 'LspReferenceText' })
  hl(0, "DiagnosticError", { fg = c.error, bg = 'NONE' })
  hl(0, "DiagnosticWarn", { fg = c.warning, bg = 'NONE' })
  hl(0, "DiagnosticInfo", { fg = c.info, bg = 'NONE' })
  hl(0, "DiagnosticHint", { fg = c.hint, bg = 'NONE' })
  hl(0, "DiagnosticOk", { fg = c.ok, bg = 'NONE' })
  hl(0, "LspInfoBorder", { link = 'PmenuPadding' })

  -- nvim-navic
  hl(0, "NavicIconsModule", { fg = c.fg, bg = c.win_bar_bg, bold=true, })
  hl(0, "NavicIconsNamespace", { fg = c.identifier, bg = c.win_bar_bg })
  hl(0, "NavicIconsPackage", { link = 'NavicIconsModule' })
  hl(0, "NavicIconsClass", { fg = c.type, bg = c.win_bar_bg, bold=true, })
  hl(0, "NavicIconsMethod", { fg = c.function_, bg = c.win_bar_bg, bold=true, })
  hl(0, "NavicIconsProperty", { link = 'NavicIconsNamespace' })
  hl(0, "NavicIconsField", { link = 'NavicIconsNamespace' })
  hl(0, "NavicIconsConstructor", { fg = c.special, bg = c.win_bar_bg, bold=true, })
  hl(0, "NavicIconsEnum", { fg = c.fg, bg = c.win_bar_bg, bold=true, })
  hl(0, "NavicIconsInterface", { link = 'NavicIconsEnum' })
  hl(0, "NavicIconsFunction", { link = 'NavicIconsMethod' })
  hl(0, "NavicIconsVariable", { link = 'NavicIconsNamespace' })
  hl(0, "NavicIconsConstant", { fg = c.constant, bg = c.win_bar_bg })
  hl(0, "NavicIconsString", { fg = c.string, bg = c.win_bar_bg })
  hl(0, "NavicIconsNumber", { fg = c.number, bg = c.win_bar_bg })
  hl(0, "NavicIconsArray", { link = 'NavicIconsNamespace' })
  hl(0, "NavicIconsObject", { link = 'NavicIconsNamespace' })
  hl(0, "NavicIconsStruct", { link = 'NavicIconsClass' })
  hl(0, "NavicIconsBoolean", { fg = c.fg, bg = c.win_bar_bg })
  hl(0, "NavicSeparator", { fg = c.status_line_bg, bg = c.win_bar_bg })

  -- spell
  hl(0, "SpellBad", { fg = 'NONE', bg = 'NONE', sp = c.spell_bad, undercurl=true, })
  hl(0, "SpellCap", { fg = 'NONE', bg = 'NONE', sp = c.spell_cap, undercurl=true, })
  hl(0, "SpellRare", { link = 'SpellBad' })
  hl(0, "SpellLocal", { fg = 'NONE', bg = 'NONE', sp = c.spell_local, undercurl=true, })

  -- lines
  hl(0, "StatusLineN1", { fg = c.status_line, bg = c.n1 })
  hl(0, "StatusLineN2", { fg = c.status_line, bg = c.n2 })
  hl(0, "StatusLineRecord", { fg = c.record, bg = 'NONE' })
  hl(0, "StatusLineN2Record", { fg = c.record, bg = c.n2 })
  hl(0, "StatusLineN3", { fg = c.fg, bg = c.status_line })
  hl(0, "StatusLineI1", { fg = c.status_line, bg = c.i1 })
  hl(0, "StatusLineI2", { fg = c.status_line, bg = c.i2 })
  hl(0, "StatusLineI2Record", { fg = c.record, bg = c.i2 })
  hl(0, "StatusLineI3", { fg = c.i1, bg = c.status_line })
  hl(0, "StatusLineV1", { fg = c.status_line, bg = c.v1 })
  hl(0, "StatusLineV2", { fg = c.status_line, bg = c.v2 })
  hl(0, "StatusLineV2Record", { fg = c.record, bg = c.v2 })
  hl(0, "StatusLineV3", { fg = c.v1, bg = c.status_line })
  hl(0, "StatusLineC1", { fg = c.status_line, bg = c.c1 })
  hl(0, "StatusLineC2", { fg = c.status_line, bg = c.c2 })
  hl(0, "StatusLineC2Record", { fg = c.record, bg = c.c2 })
  hl(0, "StatusLineC3", { fg = c.c1, bg = c.status_line })
  hl(0, "StatusLineR1", { fg = c.status_line, bg = c.r1 })
  hl(0, "StatusLineR2", { fg = c.status_line, bg = c.r2 })
  hl(0, "StatusLineR2Record", { fg = c.record, bg = c.r2 })
  hl(0, "StatusLineR3", { fg = c.r1, bg = c.status_line })
  hl(0, "StatusLineRO", { fg = c.red, bg = c.status_line })
  hl(0, "StatusLineInactive", { fg = c.n2, bg = c.visual_bg,  })
  hl(0, "StatusLineError", { fg = c.error, bg = c.status_line })
  hl(0, "StatusLineInfo", { fg = c.info, bg = c.status_line })
  hl(0, "StatusLineHint", { fg = c.hint, bg = c.status_line })
  hl(0, "StatusLineWarn", { fg = c.warning, bg = c.status_line })
  hl(0, "StatusLineChanges", { fg = c.v1, bg = c.status_line })
  hl(0, "StatusLineGitAdded", { fg = c.ok, bg = c.status_line })
  hl(0, "StatusLineGitRemoved", { fg = c.status_line_remove, bg = c.status_line })
  hl(0, "StatusLineGitChanged", { fg = c.v1, bg = c.status_line })
  hl(0, "WinBar", { fg = c.win_bar_fg, bg = c.win_bar_bg })
  hl(0, "WinBarNC", { fg = c.visual_bg, bg = 'NONE' })
  hl(0, "WinBarLocation", { link = 'WinBar' })
  hl(0, "WinBarModified", { fg = c.win_bar_modified, bg = c.win_bar_bg })
  hl(0, "WinBarGitDirty", { fg = c.win_bar_git_dirty, bg = c.win_bar_bg })
  hl(0, "WinBarIndicator", { fg = c.win_bar_indicator, bg = c.win_bar_bg })
  hl(0, "WinBarIcon", { fg = c.win_bar_icon, bg = c.win_bar_bg })
  hl(0, "WinBarIconDarker", { fg = c.win_bar_icon, bg = c.float_bg })

  -- noice
  hl(0, "NoiceCmdlinePopup", { link = 'Pmenu' })
  hl(0, "NoiceCmdlinePopupBorder", { link = 'PmenuPadding' })
  hl(0, "NoiceCmdlinePopupBorderSearch", { link = 'NoiceCmdlinePopupBorder' })
  hl(0, "NoiceCmdlineIcon", { link = 'Normal' })
  hl(0, "NoiceCmdlineIconLua", { link = 'Function' })
  hl(0, "NoiceCmdlineIconFilter", { link = 'Special' })
  hl(0, "NoiceCmdlineIconInput", { fg = c.type, bg = 'NONE' })
  hl(0, "NoiceCmdlinePopupTitleInput", { fg = c.type, bg = c.float_bg, bold=true, })
  hl(0, "NoicePopup", { link = 'Normal' })
  hl(0, "NoicePopupBorder", { link = 'Normal' })
  hl(0, "NoicePopupmenuMatch", { link = 'CmpItemAbbrMatch' })
  hl(0, "NoiceSplit", { link = 'Normal' })
  hl(0, "NoiceConfirm", { link = 'Pmenu' })

  -- notify
  hl(0, "NotifyBackground", { link = 'Pmenu' })
  hl(0, "NotifyERRORBody", { fg = 'NONE', bg = c.bg })
  hl(0, "NotifyWARNBody", { link = 'NotifyERRORBody' })
  hl(0, "NotifyINFOBody", { link = 'NotifyERRORBody' })
  hl(0, "NotifyDEBUGBody", { link = 'NotifyERRORBody' })
  hl(0, "NotifyTRACEBody", { link = 'NotifyERRORBody' })
  hl(0, "NotifyERRORIcon", { link = 'DiagnosticError' })
  hl(0, "NotifyWARNIcon", { link = 'DiagnosticWarn' })
  hl(0, "NotifyINFOIcon", { link = 'DiagnosticInfo' })
  hl(0, "NotifyDEBUGIcon", { link = 'DiagnosticHint' })
  hl(0, "NotifyERRORTitle", { link = 'DiagnosticError' })
  hl(0, "NotifyWARNTitle", { link = 'DiagnosticWarn' })
  hl(0, "NotifyINFOTitle", { link = 'DiagnosticInfo' })
  hl(0, "NotifyDEBUGTitle", { link = 'DiagnosticHint' })

  -- telescope
  hl(0, "TelescopeNormal", { fg = c.fg, bg = c.float_bg })
  hl(0, "TelescopePromptCounter", { fg = c.line_number, bg = 'NONE' })
  hl(0, "TelescopePromptNormal", { link = 'Pmenu' })
  hl(0, "TelescopeTitle", { link = 'PmenuTitle' })
  hl(0, "TelescopeBorder", { link = 'PmenuSeparator' })
  hl(0, "TelescopeResultsLineNr", { fg = c.line_number, bg = c.float_bg })

  -- cmp
  hl(0, "CmpItemAbbrDeprecated", { fg = c.fold_fg, bg = 'NONE', strikethrough=true, })
  hl(0, "CmpItemAbbrMatch", { fg = c.function_, bg = 'NONE', bold=true, })
  hl(0, "CmpItemAbbrMatchFuzzy", { link = 'CmpItemAbbrMatch' })
  hl(0, "CmpItemKindVariable", { link = 'Identifier' })
  hl(0, "CmpItemKindInterface", { link = 'CmpItemKindVariable' })
  hl(0, "CmpItemKindText", { link = 'CmpItemKindVariable' })
  hl(0, "CmpItemKindFunction", { link = 'Function' })
  hl(0, "CmpItemKindMethod", { link = 'CmpItemKindFunction' })
  hl(0, "CmpItemKindKeyword", { link = 'Statement' })
  hl(0, "CmpItemKindProperty", { link = 'CmpItemKindKeyword' })
  hl(0, "CmpItemKindUnit", { link = 'CmpItemKindKeyword' })

  -- blink-cmp
  hl(0, "BlinkCmpMenu", { link = 'NormalFloat' })
  hl(0, "BlinkCmpLabelDeprecated", { fg = c.fold_fg, bg = 'NONE', strikethrough=true, })
  hl(0, "BlinkCmpLabelMatch", { fg = c.function_, bg = 'NONE', bold=true, })
  hl(0, "BlinkCmpKind", { link = 'Normal' })
  hl(0, "BlinkCmpKindVariable", { link = 'Identifier' })
  hl(0, "BlinkCmpKindInterface", { link = 'BlinkCmpKindVariable' })
  hl(0, "BlinkCmpKindText", { link = 'BlinkCmpKindVariable' })
  hl(0, "BlinkCmpKindFunction", { link = 'Function' })
  hl(0, "BlinkCmpKindMethod", { link = 'BlinkCmpKindFunction' })
  hl(0, "BlinkCmpKindKeyword", { link = 'Statement' })
  hl(0, "BlinkCmpKindProperty", { link = 'BlinkCmpKindKeyword' })
  hl(0, "BlinkCmpKindUnit", { link = 'BlinkCmpKindKeyword' })
  hl(0, "BlinkCmpKindSnippet", { link = 'Special' })
  hl(0, "BlinkCmpKindClass", { link = 'Type' })

  -- nvim-tree
  hl(0, "NvimTreeNormal", { link = 'Pmenu' })
  hl(0, "NvimTreeNormalFloat", { link = 'Pmenu' })
  hl(0, "NvimTreeLineNr", { link = 'Pmenu' })
  hl(0, "NvimTreeCursorLine", { link = 'PmenuSel' })
  hl(0, "NvimTreeEndOfBuffer", { link = 'PmenuBorder' })

  -- neo-tree
  hl(0, "NeoTreeRootName", { fg = c.constant, bg = 'NONE', bold=true, })
  hl(0, "NeoTreeTitleBar", { link = 'TelescopeTitle' })
  hl(0, "NeoTreeNormal", { link = 'Pmenu' })
  hl(0, "NeoTreeFloatNormal", { link = 'Pmenu' })
  hl(0, "NeoTreeFloatTitle", { link = 'NeoTreeFloatBorder' })
  hl(0, "NeoTreeLineNr", { link = 'Pmenu' })
  hl(0, "NeoTreeCursorLine", { link = 'PmenuSel' })
  hl(0, "NeoTreeEndOfBuffer", { link = 'PmenuBorder' })
  hl(0, "NeoTreeGitAdded", { fg = c.ok, bg = 'NONE' })
  hl(0, "NeoTreeGitDeleted", { fg = c.status_line_remove, bg = 'NONE' })
  hl(0, "NeoTreeGitModified", { fg = c.v1, bg = 'NONE' })
  hl(0, "NeoTreeGitUntracked", { fg = c.warning, bg = 'NONE' })
  hl(0, "NeoTreeGitConflict", { fg = c.warning, bg = 'NONE', bold=true, })

  -- file-type
  hl(0, "yamlBool", { link = 'Special' })
  hl(0, "yamlNull", { link = 'Special' })
  hl(0, "yamlPlainScalar", { link = 'String' })
  hl(0, "yamlFlowCollection", { link = '@punctuation.delimiter' })
  hl(0, "yamlBlockCollectionItemStart", { link = '@punctuation.delimiter' })

  -- misc
  hl(0, "LazyNormal", { link = 'Pmenu' })
  hl(0, "WhichKeyFloat", { link = 'Pmenu' })
  hl(0, "DashboardHeader", { link = 'Ignore' })
  hl(0, "DashboardText", { fg = c.function_, bg = 'NONE' })
  hl(0, "DashboardFooter", { link = 'Comment' })
  hl(0, "DashboardDesc", { link = 'Function' })
  hl(0, "DashboardIcon", { link = 'DashboardDesc' })
  hl(0, "DashboardKey", { link = 'String' })
  hl(0, "MasonNormal", { link = 'Pmenu' })
  hl(0, "MasonHeader", { link = 'PmenuTitle' })
  hl(0, "FlashLabel", { fg = c.white, bg = c.function_, bold=true, })
  hl(0, "FlashPromptIcon", { fg = c.search_bg, bg = c.warning })
  hl(0, "Floaterm", { link = 'Pmenu' })
  hl(0, "FloatermBorder", { link = 'Pmenu' })
end

return theme