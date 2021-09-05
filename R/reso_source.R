#' reso_source()
#'
#' Execute the contents of a file or string as a reso
#' expression. This just validates the file's contents
#' with reso_validate() and then interprets the string
#' as a plain R expression with `eval(parse(text=file))`.
#' @param file A file or a string, to be executed as a reso expression.
#' @return The results of the evaluated reso expression.
#' @examples
#' reso_source("x(s(d(p()[0])))")
#' reso_source("x(s(d(p()[0])))(0,x(s(d(p()[0])))(!0,0[0]))")
#' filename <- system.file("extdata", "example.reso", package = "reso")
#' reso_source(filename)
#' @export

reso_source <- function(file){
  if(file.exists(file)) file <- readChar(file, file.info(file)$size)
  reso_validate(file)
  eval(parse(text = file))
}
