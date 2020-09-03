-- bootstrap the fennel compiler
fennel = require("fennel")

-- add src to paths
package.path = package.path .. ";./src/?.lua"
fennel.path = fennel.path .. ";./src/?.fnl"

table.insert(package.loaders,
  _G.fennel.make_searcher({correlate=true,
                           -- NOTE allows ALL globals, no questions.
                           allowedGlobals=false,
                           env = _G}))

pp = function(x) print(require("fennelview")(x)) end
lume = require("lume")

u = require("util")

-- set random seed
math.randomseed(os.time())

-- initialize the framework
require("core")
