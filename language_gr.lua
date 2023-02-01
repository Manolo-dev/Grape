-- mod-version:3
local syntax = require "core.syntax"

syntax.add {
  name = "Grape",
  files = { "%.gr$" },
  comment = "--",
  patterns = {
    { pattern = {"%-%-", "\n"},               type = "comment"        },
    { pattern = {"/%-%-", "-%-%/"},           type = "comment"        },
    { pattern = {'"', '"', '\\'},             type = "string"         },
    { pattern = {"'", "'", '\\'},             type = "char"           },
    { pattern = "-?0x%x+",                    type = "number"         },
    { pattern = "-?%d+[%d%.eE]*f?",           type = "number"         },
    { pattern = "-?%.?%d+f?",                 type = "number"         },
    { pattern = "[!%<->%<=>%+-*^/%%.~&%$%:|]",type = "operator"       },
    { pattern = "[%a_'][%w_']*",              type = "symbol"         },
  },
  symbols = {
    ["in"]         = "keyword",
    ["or"]         = "keyword",
    ["xor"]        = "keyword",
    ["if"]         = "keyword",
    ["else"]       = "keyword",
    ["let"]        = "keyword",
    ["for"]        = "keyword",
    ["while"]      = "keyword",
    ["loop"]       = "keyword",
    ["match"]      = "keyword",
    ["import"]     = "keyword", 
    ["operator"]   = "keyword",
    ["not"]        = "keyword",
    ["and"]        = "keyword",
  },
}
