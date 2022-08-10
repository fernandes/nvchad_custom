local theme = require("custom.highlights.colors")

return   {
  -- YAML
  yamlTSPunctDelimiter = { fg = theme.whi3, },
  yamlTSField = { fg = theme.bb },
  javascriptTSConstructor = { fg = theme.mb },
  javascriptTSNumber = { fg = theme.rb },
  javascriptTSProperty = { fg = theme.whi2 },
  crystalAttribute = { fg = theme.m },
  crystalLocalVariableOrMethod = { fg = theme.whi3 },
  crystalArrayDelimiter = { fg = theme.red },
  crystalArrayDelimiter = { fg = theme.yb },
  crystalSymbol = { fg = theme.rb },
  crystalArrayLiteral = { fg = theme.whi3 },
  crystalStringDelimiter = { fg = theme.c },
  rubyControl = { fg = theme.m, },
  rubyBangPredicateMethod = { fg = theme.bb, },
  eRubyExpression = { fg = theme.m, },
  rubyStringDelimiter = { fg = theme.gb, },
  rubySymbol = { fg = theme.rb, },
  rubyBlockParameterList = { fg = theme.bb, },
  eRubyBlock = { fg = theme.whi2, },
  rubyKeywordAsMethod = { fg = theme.m, },
}
