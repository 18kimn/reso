#' @title reso-native functions
#' @description This package contains four wrapper functions that make almost all of R
#' available, by allowing basic string manipulation and evaluation.
#' @param string A character value
#' @param i An integer value
#' @param ... Passed to `paste0` for `p()` or `deparse()` for `d()`.
#' @keywords functions native
#'
#' @examples
#' s(c()) # character(0)
#' d(character(0)) # "character(0)"
#' c(p()) # ""
#' x("1 + 1") # 2

#' @describeIn funs Given a `string` and a number `i`, returns the character at position `i` from `string`
#' @export
s <- function(string, i = 1){substr(string, i, i)}

#' @describeIn funs An alias for `paste0(...,collapse = "")`; essentially squashes
#' items together into a single string.
#' @export
p <- function(...){paste0(..., collapse = "")}

#' @describeIn funs An alias for `deparse(...)`; converts an R expression into a literal string.
#' @export
d <- function(...){deparse(...)}

#' @describeIn funs Evaluates a given string as an R expression.
#' @export
x <- function(string){eval(parse(text = string))}
