<!-- README.md is generated from README.Rmd. Please edit that file -->
**NOTE: This is a toy package created for expository purposes. It is not meant to actually be useful. If you want a package for factor handling, please see [forcats](https://cran.r-project.org/package=forcats).**

### foofactors

Factors are a very useful type of variable in R, but they can also drive you nuts. This package provides some helper functions for the care and feeding of factors.

### Installation

``` r
devtools::install_github("yukirang/foofactors")
```

### Quick demo

Binding two factors via `fbind()`:

``` r
library(foofactors)
library(gapminder)
a <- factor(c("character", "hits", "your", "eyeballs"))
b <- factor(c("but", "integer", "where it", "counts"))
```

Simply catenating two factors leads to a result that most don't expect.

``` r
c(a, b)
#> [1] 1 3 4 2 1 3 4 2
```

The `fbind()` function glues two factors together and returns factor.

``` r
fbind(a, b)
#> [1] character hits      your      eyeballs  but       integer   where it 
#> [8] counts   
#> Levels: but character counts eyeballs hits integer where it your
```

Often we want a table of frequencies for the levels of a factor. The base `table()` function returns an object of class `table`, which can be inconvenient for downstream work. Processing with `as.data.frame()` can be helpful but it's a bit clunky.

``` r
set.seed(1234)
x <- factor(sample(letters[1:5], size = 100, replace = TRUE))
table(x)
#> x
#>  a  b  c  d  e 
#> 25 26 17 17 15
as.data.frame(table(x))
#>   x Freq
#> 1 a   25
#> 2 b   26
#> 3 c   17
#> 4 d   17
#> 5 e   15
```

The `freq_out()` function returns a frequency table as a well-named `tbl_df`:

``` r
freq_out(x)
#> # A tibble: 5 x 2
#>   x         n
#>   <fct> <int>
#> 1 a        25
#> 2 b        26
#> 3 c        17
#> 4 d        17
#> 5 e        15
```

The `fdetect()`function checks a factor that should be character

``` r
fdetect(a)
#> [1] TRUE
```

The `freorder()`function reorders a factor in desendence

``` r
freorder(a)
#> [1] "your"      "hits"      "eyeballs"  "character"
```

The `fsetis()`function sets levels to the order in which they appear in the data

``` r
fsetis(b)
#> [1] but      integer  where it counts  
#> Levels: but integer where it counts
```

The `readdf()` and `writedf()` function read and write data frames from plain text delimited files

``` r
filepath <- "test.txt"
(df <- readdf(filepath))
#>   V1 V2
#> 1  1  a
#> 2  2  b
#> 3  3  c
#> 4  4  d
#> 5  5  e
writedf(head(gapminder,10), filepath)
# check whether the file has changed
(df <- readdf(filepath))
#>             V1        V2   V3      V4       V5          V6
#> 1      country continent year lifeExp      pop   gdpPercap
#> 2  Afghanistan      Asia 1952  28.801  8425333 779.4453145
#> 3  Afghanistan      Asia 1957  30.332  9240934 820.8530296
#> 4  Afghanistan      Asia 1962  31.997 10267083   853.10071
#> 5  Afghanistan      Asia 1967   34.02 11537966 836.1971382
#> 6  Afghanistan      Asia 1972  36.088 13079460 739.9811058
#> 7  Afghanistan      Asia 1977  38.438 14880372   786.11336
#> 8  Afghanistan      Asia 1982  39.854 12881816 978.0114388
#> 9  Afghanistan      Asia 1987  40.822 13867957 852.3959448
#> 10 Afghanistan      Asia 1992  41.674 16317921 649.3413952
#> 11 Afghanistan      Asia 1997  41.763 22227415  635.341351
```
