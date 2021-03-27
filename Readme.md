Readme
================
Maris Vainre
27/03/2021

# About PraxisColour

This is a R package to employ the now almost-official [Praxis Centre for
Policy Studies](http://www.praxis.ee/en/) colour palette. The package
was created based on [Alex Quent’s
MRColour](https://github.com/JAQuent/MRColour) and [Drsimonj’s blog
post](https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2).

# The colour palettes

``` r
library(ggplot2)
library(hrbrthemes)
library(PraxisColour)
library(tidyverse)

praxis_pal("main")(3)
```

    ## [1] "#98C9F6" "#3455CC" "#F14D4D"

``` r
praxis_pal("main")(10)
```

    ##  [1] "#98C9F6" "#81AFEC" "#6B95E3" "#557BDA" "#3F61D0" "#4954BD" "#7252A1"
    ##  [8] "#9C5085" "#C64E69" "#F14D4D"

``` r
praxis_pal("binary")(2)
```

    ## [1] "#3455CC" "#A5A5A5"

``` r
praxis_pal("blackgold")(2)
```

    ## [1] "#262626" "#C8A366"

``` r
praxis_pal("cool")(3)
```

    ## [1] "#98C9F6" "#3455CC" "#A5A5A5"

``` r
praxis_pal("monochrome")(3)
```

    ## [1] "#262626" "#656565" "#A5A5A5"

``` r
praxis_pal("full")(7)
```

    ## [1] "#98C9F6" "#3455CC" "#F14D4D" "#FFCE19" "#262626" "#A5A5A5" "#C8A366"

## Ggplot examples

``` r
ggplot(mtcars, aes(hp, mpg)) +
    geom_point(color = praxis_cols("blue"),
               size = 8, alpha = .8) +
    import_roboto_condensed()+
    theme_ipsum_rc(grid=FALSE)
```

![](Readme_files/figure-gfm/dotsSin-1.png)<!-- -->

``` r
ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Species)) +
  geom_point(size = 2) +
  scale_color_praxis()  +
    theme_ipsum_rc(grid=FALSE)
```

![](Readme_files/figure-gfm/dots3-1.png)<!-- -->

``` r
iris.sub <- iris %>%
  filter(Species != "versicolor")

ggplot(iris.sub, aes(Sepal.Width, Sepal.Length, color = Species)) +
  geom_point(size = 2) +
  scale_color_praxis(palette = "binary")  +
    theme_ipsum_rc(grid=FALSE)
```

![](Readme_files/figure-gfm/dotsBin-1.png)<!-- -->

``` r
iris.sub <- iris %>%
  filter(Species != "versicolor")

ggplot(iris.sub, aes(Sepal.Width, Sepal.Length, color = Species)) +
  geom_point(size = 2) +
  scale_color_praxis(palette = "monochrome")  +
    theme_ipsum_rc(grid=FALSE)
```

![](Readme_files/figure-gfm/dotsMono-1.png)<!-- -->

``` r
iris.sub <- iris %>%
  filter(Species != "versicolor")

ggplot(iris.sub, aes(Sepal.Width, Sepal.Length, color = Species)) +
  geom_point(size = 2) +
  scale_color_praxis(palette = "blackgold")  +
    theme_ipsum_rc(grid=FALSE)
```

![](Readme_files/figure-gfm/dotsBG-1.png)<!-- -->

``` r
ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Species)) +
  geom_point(size = 2) +
  scale_color_praxis(palette = "cool")  +
    theme_ipsum_rc(grid=FALSE)
```

![](Readme_files/figure-gfm/dots2-1.png)<!-- -->

``` r
ggplot(mpg, aes(displ, hwy, color = class)) +
  geom_point(size = 2) +
  scale_color_praxis(palette = "full")  +
    theme_ipsum_rc(grid=FALSE)
```

![](Readme_files/figure-gfm/dotsall-1.png)<!-- -->

``` r
ggplot(mpg, aes(manufacturer, fill = manufacturer)) +
  geom_bar()+
  scale_fill_praxis(palette = "full", guide = "none") +
  theme_ipsum_rc(grid=FALSE, axis_text_size = 6)
```

![](Readme_files/figure-gfm/barAll-1.png)<!-- -->

# Installing the package

Start by installing the devtool’s package

``` r
install.packages("devtools")
```

Then download this package from github

``` r
library(devtools)
install_github("mvainre/PraxisColour")
```

Now you’re ready to use it:

``` r
library(PraxisColour)
```
