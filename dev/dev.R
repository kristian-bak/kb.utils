
## Document
devtools::document()

## Load all functions
devtools::load_all()

## Run tests
devtools::test()

## Check everything
devtools::check()

## Add test
usethis::use_test("catch_error")
usethis::use_test("cut_var")
usethis::use_test("remove_everything_after")
usethis::use_test("remove_everything_before")
usethis::use_test("remove_everything_but_digits")
usethis::use_test("adj_r_squared_for_glm")
usethis::use_test("loop_counter")

## Bump version number
usethis::use_version()

## Renv status
renv::status()

## Code coverage
devtools::test_coverage()

## Install locally
devtools::install()

## Add NEWS
usethis::use_news_md()

## Add pipe
usethis::use_pipe()
