#' reso_validate()
#'
#'
#' @export
#'
#'
#'

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

reso_source <- function(file){
  if(file.exists(file)) file <- readChar(file, file.info(file)$size)
  reso_validate(file)
  eval(parse(text = file))
}

# tests

#reso_validate
#not valid
reso_validate("a")
reso_validate("assign(a, b)")
reso_validate("x(s(d(p()))) + a")

# valid
reso_validate("x(s(d(p()[0])))")
reso_validate("x(s(d(p()[0])))(0,x(s(d(p()[0])))(!0,0[0]))")

#reso_source
reso_source("x(s(d(p()[0])))(0,x(s(d(p()[0])))(!0,0[0]))")


