test_that("invalid file parameters fail", {
  expect_error(reso_source("this/file/does/not/exist"))
  expect_error(reso_source("s(p(a()))"))
})

test_that("sourcing local string works", {
  reso_string <- "x(s(d(p()[0])))(0,x(s(d(p()[0])))(!0,0[0]))"
  expect_equal(reso_source(reso_string), c(0, 1))
})

test_that("sourcing local file works", {
  temp <- tempfile()
  filename <- system.file("extdata", "example.reso", package = "reso")
  reso_string <- "x(s(d(p()[0])))(0,x(s(d(p()[0])))(!0,0[0]))"
  writeChar(reso_string, temp, eos = NULL)
  writeChar(reso_string, filename, eos = NULL)
  expect_equal(reso_source(temp), c(0, 1))
  expect_equal(reso_source(filename), c(0, 1))
})



