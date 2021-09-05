test_that("invalid expressions fail", {
  expect_error(reso_validate("assign(a, b)"))
  expect_error(reso_validate("x(s(d(p()))) + a"))
})

test_that("valid expressions return TRUE", {
  expect_true(reso_validate("x(s(d(p()[0])))"))
  expect_true(reso_validate("x(s(d(p()[0])))(0,x(s(d(p()[0])))(!0,0[0]))"))
  expect_true(reso_validate("s(d(!0[0]))"))
})

test_that("invalid expressions with soft=TRUE return FALSE", {
  expect_false(reso_validate("assign(a, b)", soft= TRUE))
  expect_false(reso_validate("x(s(d(p()))) + a", soft= TRUE))
})
