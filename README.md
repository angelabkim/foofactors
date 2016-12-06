<!-- README.md is generated from README.Rmd. Please edit that file -->
This is a toy package created as a homework assignment using Jenny's [foofactors](https://github.com/jennybc/foofactors) as a template. It is not meant to be actually useful. Scroll below to see my two additions to Jenny's existing functions.

### foofactors

Factors are a very useful type of variable in R, but they can also drive you nuts. This package provides some helper functions for the care and feeding of factors.

### Installation

``` r
devtools::install_github("jennybc/foofactors")
```

### Quick demo of Jenny's functions

Binding two factors via `fbind()`:

``` r
library(foofactors)
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
#> # A tibble: 5 × 2
#>        x     n
#>   <fctr> <int>
#> 1      a    25
#> 2      b    26
#> 3      c    17
#> 4      d    17
#> 5      e    15
```

### Demo of my functions

-   The `is_char()` function detects factors that should be character because the number of unique values equals its length.

Example:

``` r
# Factor that should be a charactor
d <- factor(c('Black', 'Green', 'White')) 

# Not a charactor
e <- factor(c('Black', 'Green', 'Green'))
```

The function returns TRUE or FALSE:

``` r
is_char(d)
#> [1] TRUE
is_char(e)
#> [1] FALSE
```

-   The function `in_desc()` reorders factors in descending order.

Example:

``` r
f <- factor(c('Alex', 'Bear', 'Cody'))
```

Function reorders:

``` r
levels(in_desc(f))
#> [1] "Cody" "Bear" "Alex"
```
