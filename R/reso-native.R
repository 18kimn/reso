#' reso-native functions
#'
#' This package contains four wrapper functions that make almost all of R
#' available. They allow basic string manipulation and evaluation.
#'
#' @keywords functions
#' @export
#' @examples
#' s(c()) # character(0)
#' c(p()) # ""
#' d(character(0)) # "character(0)"
#' x("1 + 1") # 2

s <- function(string, i = 1){substr(string, i, i)}
p <- function(...){paste0(..., collapse = "")}
d <- function(...){deparse(...)}
x <- function(expr){eval(parse(text = expr))}
