require('chobiama.base')
require('chobiama.highlights')
require('chobiama.maps')
require('chobiama.plugins')

local has = function(x)
  return vim.fn.has(x) == 1
end
local is_mac = has "macunix"

if is_mac then
  require('chobiama.macos')
end
