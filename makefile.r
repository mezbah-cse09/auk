unlink(list.files("man", full.names = TRUE))
devtools::clean_vignettes()
pkgdown::clean_site()

devtools::document()

devtools::build()
f <- list.files("..", "auk.*gz$", full.names = TRUE)
devtools::install_local("../auk")
unlink(f)

devtools::test()
devtools::check()

rmarkdown::render("README.Rmd")
devtools::build_vignettes()
pkgdown::build_site()
file.copy(list.files(".", "README.*png", full.names = TRUE), "docs/")
