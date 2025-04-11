# R language

## Prerequisistes

```sh
sudo apt-get install libcurl4-openssl-dev libssl-dev
sudo apt-get install r-cran-devtools
```

Execute file:

```sh
Rscript file.R
```

## Install devtools

Not working, just install r-cran-devtools and it will be fine.
```R
install.packages("devtools", dependencies = TRUE)
```

## Install ggbio

```R
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("ggbio")
```


## DownscaleR

```R
devtools::install_github(c("SantanderMetGroup/transformeR", "SantanderMetGroup/downscaleR"))
```


## Downscaler CDFt

https://cran.r-project.org/web/packages/CDFt/CDFt.pdf


## Code coverage

```R
covr::codecov(
  quiet = FALSE,
  clean = FALSE,
  install_path = file.path("/tmp/r", winslash = "/"), "package")
)
```
