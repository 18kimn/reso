# c() = NULL
#
# c(c(NA),c())
# !!0 = FALSE
# !0 = TRUE
# # language functions
# s <- function(t, i = 1){substr(t, i, i)}
# p <- function(...)paste0(..., collapse = "")
# d <- deparse
# x <- function(expr){eval(parse(text = expr))}
# # allowed characters
# # c, s, x, p, (), [], !, 0, + ","
#
# # the language needs to be able to
# # split strings
# # combine strings
# # call a function
#
# # empty string p(s(c()))
# # coerce to character c(expr, p(s(c())))[1]
# # 1 = c(!0, 0[0])
#
#
# # numeric(0) c()+ 0
# # logical(0) c(T)[0]
# # character p()[0]
# # integer c() + !0
# # complex x(p(0,s(d(c() + !0))))[0]
# # character p(c())
# # raw
#
# months =
#
#   # letters is logical  +numeric + integer + integer + integer(c(-2,-1)) +
#   # toupper is integer + logical + numeric + complex + complex + integer
#   # tolower is integer + logical + logical + logical +
