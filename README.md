# R language

# Prerequisistes

```sh
sudo apt-get install libcurl4-openssl-dev libssl-dev
sudo apt-get install r-cran-devtools
```

Execute file:

```sh
Rscript file.R
```

# Install devtools

Not working, just install r-cran-devtools and it will be fine.
```R
install.packages("devtools", dependencies = TRUE)
```


# DownscaleR

```R
devtools::install_github(c("SantanderMetGroup/transformeR", "SantanderMetGroup/downscaleR"))
```


# Downscaler CDFt

https://cran.r-project.org/web/packages/CDFt/CDFt.pdf

