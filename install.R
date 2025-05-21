# Add additional dependencies to this array
load.lib <- c(
  "here",
  "tidyverse",
  "tidycensus",
  "ggplot2",
  "patchwork",
  "sf",
  "knitr",
  "rmarkdown",
  "formatR",
  "dots"
)
install.lib <- load.lib[!load.lib %in% installed.packages()]
for (lib in install.lib) {
  install.packages(
    lib,
    dependencies = TRUE, repos = "http://cran.r-project.org", Ncpus = 6
  )
}
