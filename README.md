**NOTE: his is a toy package created for expository purposes, in Chapter 2 of the 
for the second edition of [R Packages](https://r-pkgs.org). It is not meant to actually be useful. 

# foofactors

<!-- badges: start -->
<!-- badges: end -->

Factors are a very useful type of variable in R, but they can also be very aggravating. This package provides some helper functions for the care and feeding of factors.

## Installation

You can install the released version of foofactors from [CRAN](https://CRAN.R-project.org) with:

``` r
devtools::install_github("dan-wagner/foofactors")
```

## Quick Demo
Binding two factors via `fbind()`:

```{r}
library(foofactors)
a <- factor(c("character", "hits", "your", "eyeballs"))
b <- factor(c("but", "integer", "where it", "counts"))
```

Simply catenating two factors leads to a result that most don't expect.

```{r}
c(a, b)
```

The `fbind()` function glues two factors together and returns factor.

```{r}
fbind(a, b)
```

Often we want a table of frequencies for the levels of a factor. The base `table()` function returns an object of class `table`, which can be inconvenient for downstream work.

```{r}
set.seed(1234)
x <- factor(sample(letters[1:5], size = 100, replace = TRUE))
table(x)
```

The `fcount()` function returns a frequency table as a tibble with a column of factor levels and another of frequencies:

```{r}
fcount(x)
```

