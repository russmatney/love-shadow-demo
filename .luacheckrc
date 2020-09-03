-- -*- lua -*-
color = false
-- don't warn when unused arguments start with _
-- don't warn for shadowed upvalues; the compiler emits these no matter what
ignore = {"21/_.*",
          "431",
          "111", -- allow globals in fennel :yeehaw:
          "631", -- line too long. mostly not in our control
          "541", -- empty do-end blocks? seem to show up (: some :times)
          "311" -- unused var (false positive with let/when/-?>)
}
-- max_line_length = false

new_globals = {"love", "pp", "fennel", "lume", "u"}

stds.fennel = {globals ={"fennel", "pp", "lume", "self", "u"}}
