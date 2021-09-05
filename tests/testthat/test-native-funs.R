test_that("s works", {
  expect_equal(s("test"), "t")
  expect_equal(s("test", 2), "e")
})

test_that("p works", {
  expect_equal(p("this", "that"), "thisthat")
  expect_equal(p(c("this", "that")), "thisthat")
})

test_that("d works", {
  expect_equal(d(character(0)), "character(0)")
})

test_that("x works", {
  expect_equal(x("1+1"), 2)
  expect_equal(x("c(0,1)"), c(0,1))
})

test_that("functions work together", {
  expect_equal(s(d(s(0)[0])), "c")
  expect_equal(x(s(d(p()[0])))(0,x(s(d(p()[0])))(!0,0[0])), c(0, 1))
})
