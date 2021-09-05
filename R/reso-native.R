#' @title reso-native functions
#' @description This package contains four wrapper functions that make almost all of R
#' available, by allowing basic string manipulation and evaluation.
#' @param string A character value
#' @param i An integer value
#' @keywords functions native
#'
#' @examples
#' s(c()) # character(0)
#' d(character(0)) # "character(0)"
#' c(p()) # ""
#' x("1 + 1") # 2

#' @describeIn funs Given a `string` and a number `i`, returns the character at position `i` from `string`
s <- function(string, i = 1){substr(string, i, i)}

#' @describeIn funs An alias for `paste0(...,collapse = "")`; essentially squashes items together into a single string.
p <- function(...){paste0(..., collapse = "")}

#' @describeIn funs An alias for `deparse(...)`; converts an R expression into a literal string.
d <- function(...){deparse(...)}

#' @describeIn funs Evaluates a given string as an R expression.
x <- function(string){eval(parse(text = string))}
