Readme
================
Maris Vainre
03/04/2021

# About PraxisColour

This is an R package to employ the official [Praxis Centre for Policy
Studies](http://www.praxis.ee/en/) colour palette. The package was
created based on [Alex Quent’s
MRColour](https://github.com/JAQuent/MRColour) and [Drsimonj’s blog
post](https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2).

# The colour palettes

## Main

``` r
library(PraxisColour)
library(tidyverse)
library(ggplot2)
library(hrbrthemes)

praxis_pal("main")(7)
```

    ## [1] "#3455CC" "#98C9F6" "#262626" "#F14D4D" "#FFCE19" "#A5A5A5" "#C8A366"

![](Readme_files/figure-gfm/swatchMain-1.png)<!-- -->

## Sub-palettes

### Qualitative

``` r
praxis_pal("contrast")(3)
```

    ## [1] "#3455CC" "#F14D4D" "#FFCE19"

![](Readme_files/figure-gfm/swatchContrast-1.png)<!-- -->

``` r
praxis_pal("cool")(3)
```

    ## [1] "#3455CC" "#A5A5A5" "#98C9F6"

![](Readme_files/figure-gfm/swatchCool-1.png)<!-- -->

``` r
praxis_pal("binary")(2)
```

    ## [1] "#3455CC" "#A5A5A5"

![](Readme_files/figure-gfm/swatchBinary-1.png)<!-- -->

``` r
praxis_pal("blackgold")(2)
```

    ## [1] "#262626" "#C8A366"

![](Readme_files/figure-gfm/swatchBG-1.png)<!-- -->

``` r
praxis_pal("monochrome")(2)
```

    ## [1] "#262626" "#A5A5A5"

![](Readme_files/figure-gfm/swatchMono-1.png)<!-- -->

Each palette has a gradient. For example:

``` r
praxis_pal("contrast")(10)
```

    ##  [1] "#3455CC" "#5E53AF" "#885193" "#B24F77" "#DC4D5B" "#F25B47" "#F5773B"
    ##  [8] "#F89430" "#FBB124" "#FFCE19"

![](Readme_files/figure-gfm/swatchMain10-1.png)<!-- -->

### Sequential palettes

``` r
praxis_pal("seq_blue")(7)
```

    ## [1] "#3455CC" "#557BDA" "#76A2E8" "#98C9F6" "#B2D7F8" "#CDE4FA" "#E8F3FD"

![](Readme_files/figure-gfm/swatchSeqBlu-1.png)<!-- -->

``` r
praxis_pal("seq_yellow")(7)
```

    ## [1] "#FFCE19" "#FFD438" "#FFDB58" "#FFE278" "#FFE898" "#FFEFB8" "#FFF6D8"

![](Readme_files/figure-gfm/swatchSeqlYellow-1.png)<!-- -->

``` r
praxis_pal("seq_red")(7)
```

    ## [1] "#F14D4D" "#F36767" "#F58181" "#F79C9C" "#F9B6B6" "#FBD0D0" "#FDEBEB"

![](Readme_files/figure-gfm/swatchSeqR-1.png)<!-- -->

``` r
praxis_pal("seq_gold")(7)
```

    ## [1] "#C8A366" "#CFAF7B" "#D7BC90" "#DEC9A5" "#E6D5BA" "#EDE2CF" "#F5EFE5"

![](Readme_files/figure-gfm/swatchSeqlG-1.png)<!-- -->

``` r
praxis_pal("seq_black")(7)
```

    ## [1] "#262626" "#505050" "#7A7A7A" "#A5A5A5" "#BABABA" "#D0D0D0" "#E6E6E6"

![](Readme_files/figure-gfm/swatchSeqBla-1.png)<!-- -->

### Diverging palettes

``` r
praxis_pal("diverging_br")(7)
```

    ## [1] "#3455CC" "#6F85D4" "#AAB5DD" "#E6E6E6" "#E9B3B3" "#ED8080" "#F14D4D"

![](Readme_files/figure-gfm/swatchDivbr-1.png)<!-- -->

``` r
praxis_pal("diverging_bg")(7)
```

    ## [1] "#3455CC" "#6F85D4" "#AAB5DD" "#E6E6E6" "#DCCFBB" "#D2B990" "#C8A366"

![](Readme_files/figure-gfm/swatchDiv_bg-1.png)<!-- -->

``` r
praxis_pal("diverging_by")(7)
```

    ## [1] "#3455CC" "#6F85D4" "#AAB5DD" "#E6E6E6" "#EEDEA1" "#F6D65D" "#FFCE19"

![](Readme_files/figure-gfm/swatchDiv_by-1.png)<!-- -->

## `ggplot` examples

You can specify a colour from the following:
`praxis_cols("blue", "lightblue", "black", "red", "yellow", "grey", "gold")`

``` r
ggplot(mtcars, aes(hp, mpg)) +
    geom_point(colour = praxis_cols("blue"),
               size = 8, alpha = .8) +
    import_roboto_condensed()+
    theme_ipsum_rc(grid=FALSE)
```

![](Readme_files/figure-gfm/dotsSin-1.png)<!-- -->

``` r
ggplot(mpg, aes(displ, hwy, colour = class)) +
  geom_point(size = 2) +
  scale_colour_praxis(palette = "main")  +
    theme_ipsum_rc(grid=FALSE)
```

![](Readme_files/figure-gfm/dotsall-1.png)<!-- -->

``` r
ggplot(mpg, aes(manufacturer, fill = manufacturer)) +
  geom_bar()+
  scale_fill_praxis(palette = "main", guide = "none") +
  theme_ipsum_rc(grid=FALSE, axis_text_size = 6)
```

![](Readme_files/figure-gfm/barAll-1.png)<!-- -->

``` r
ggplot(mpg, aes(manufacturer, fill = manufacturer)) +
  geom_bar()+
  scale_fill_praxis(palette = "seq_blue", guide = "none") +
  theme_ipsum_rc(grid=FALSE, axis_text_size = 6)
```

![](Readme_files/figure-gfm/barAllseq-1.png)<!-- -->

``` r
ggplot(mpg, aes(manufacturer, fill = manufacturer)) +
  geom_bar()+
  scale_fill_praxis(palette = "diverging_br", guide = "none") +
  theme_ipsum_rc(grid=FALSE, axis_text_size = 6)
```

![](Readme_files/figure-gfm/barAlldiv-1.png)<!-- -->

A boxplot example contributed by Märt Masso.

<img src="Readme_files/figure-gfm/Boxplot.png" width="90%" style="display: block; margin: auto auto auto 0;" />

``` r
ggplot(iris, aes(Sepal.Width, Sepal.Length, colour = Species)) +
  geom_point(size = 2) +
  scale_colour_praxis(palette = "contrast")  +
    theme_ipsum_rc(grid=FALSE)
```

![](Readme_files/figure-gfm/dotsCon-1.png)<!-- -->

``` r
ggplot(iris, aes(Sepal.Width, Sepal.Length, colour = Species)) +
  geom_point(size = 2) +
  scale_colour_praxis(palette = "cool")  +
    theme_ipsum_rc(grid=FALSE)
```

![](Readme_files/figure-gfm/dots2-1.png)<!-- -->

``` r
iris.sub <- iris %>%
  filter(Species != "versicolour")

ggplot(iris.sub, aes(Sepal.Width, Sepal.Length, colour = Species)) +
  geom_point(size = 2) +
  scale_colour_praxis(palette = "binary")  +
    theme_ipsum_rc(grid=FALSE)
```

![](Readme_files/figure-gfm/dotsBin-1.png)<!-- -->

``` r
iris.sub <- iris %>%
  filter(Species != "versicolour")

ggplot(iris.sub, aes(Sepal.Width, Sepal.Length, colour = Species)) +
  geom_point(size = 2) +
  scale_colour_praxis(palette = "blackgold")  +
    theme_ipsum_rc(grid=FALSE)
```

![](Readme_files/figure-gfm/dotsBG-1.png)<!-- -->

``` r
iris.sub <- iris %>%
  filter(Species != "versicolour")

ggplot(iris.sub, aes(Sepal.Width, Sepal.Length, colour = Species)) +
  geom_point(size = 2) +
  scale_colour_praxis(palette = "monochrome")  +
    theme_ipsum_rc(grid=FALSE)
```

![](Readme_files/figure-gfm/dotsMono-1.png)<!-- -->

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
