
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/robinlovelace/cyclestreets?branch=master&svg=true)](https://ci.appveyor.com/project/robinlovelace/cyclestreets)

<!-- README.md is generated from README.Rmd. Please edit that file -->
cyclestreets
============

The goal of cyclestreets is to ...

Installation
------------

You can install the released version of cyclestreets from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("devtools")
devtools::install_github("Robinlovelace/cyclestreets")
```

Example
-------

This is a basic example which shows you how to solve a common problem:

``` r
# Get start/finish points, e.g. as geocoded points
#install.packages("stplanr")
library ("stplanr")
from = stplanr::geo_code ("Bradford")
to = stplanr::geo_code ("Leeds")

# Obtain bicycle route
# Get your key at https://www.cyclestreets.net/api/apply/
# Put your key in your machine environment using `export CYCLESTREET=your_key_here`
# Route types available are: fastest, quietest, balanced
library ("cyclestreets")
key = Sys.getenv ('CYCLESTREET')
route = cyclestreets::journey (from, to, "balanced")

# Display on map, e.g.
#install.packages("mapview")
#library ("mapview")
#mapview::mapview(route)
```
