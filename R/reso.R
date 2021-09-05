#' reso: An esoteric R-based programming style
#'
#' Have you ever been frustrated at R, maybe after reading too many rude
#' Stackoverflow or R-help threads? (me too) Well, what if we took R and instead
#' of helping making it accessible and fun, made all of those esoteric,
#' jargon-y, incredibly annoying, and unreadable parts much worse?
#'
#' Enter \code{reso}, a library and R-package programming language. Only the
#' following symbols from R are allowed:
#'
#' (), [], !, 0, +, and "," (the comma).
#'
#' Along with four functions to make \code{reso} "go." They are really
#' just simplified and narrower versions of existing R utilities, and are:
#'
#' s(): An alias for substr(string, i). Used to get a letter from a string
#' p(): An alias for paste(..., collapse = ""), to concatenate strings
#' x(): Interpret and execute a string as an R expession
#' d(): an alias for \code{\link[base]{deparse}}
#'
#' More can be read about these in the \link{reso-native functions} page
