#' Validate a `reso` expression.
#'
#' Tests whether a string or file is an R expression. Fails with error if the string or file
#' is invalid and soft=FALSE, returns FALSE is the file is invalid while soft=TRUE.
#'
#' @param file string. either a path to a file or a `reso` expression as a string.
#' @param soft logical. Should `reso_validate()` return FALSE instead of failing on error
#' if a file is invalid? FALSE by default.
#' @return TRUE if the file is a valid `reso` expression, FALSE otherwise.
#'
#' @examples
#' \dontrun{
#' reso_validate("assign(a, b)") # these two fail with error
#' reso_validate("x(s(d(p()))) + a")
#' }
#'
#' reso_validate("assign(a, b)", soft = TRUE) #is invalid, but soft=TRUE prevents error and the function returns FALSE instead
#' reso_validate("x(s(d(p()[0])))") # these two are valid code
#' reso_validate("x(s(d(p()[0])))(0,x(s(d(p()[0])))(!0,0[0]))")
#' @export


reso_validate <- function(file, soft = FALSE){
  if(file.exists(file)) file <- readChar(file, file.info(file)$size)
  invalid_index <- regexpr("([^][spxd\\(\\)!0+,])", file)[1]
  isValid <- invalid_index == -1 # -1 = no invalid characters detected
  if(!isValid & !soft){
    stop(
      "Invalid character '", substr(file, invalid_index, invalid_index),
      "' detected at character ", invalid_index,
      " of provided reso expression."
    )
  }
  return(isValid)
}

