library(testthat)
library(zen4R)


#test environment
zenodo_url <- "https://sandbox.zenodo.org/api"
zenodo_token <- "<token>"
zenodo_logger <- "DEBUG"
ZENODO <- try(ZenodoManager$new(url = zenodo_url, token = zenodo_token, logger = zenodo_logger))

if(is(ZENODO, "ZenodoManager")){
  cat(sprintf("Zenodo sandbox '%s' configured with token. Running integration tests...\n", zenodo_url))
  test_check("zen4R")
}else{
  cat("Zenodo sandbox '%s' not configured. Skipping integration tests...\n")
}
