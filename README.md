# oscarwilder <img src="https://pachamaltese.github.io/oscarwilder/hexicon.svg" width=150 align="right" alt="hexicon"/>

<!-- badges: start -->
[![R build
status](https://github.com/pachamaltese/oscarwilder/workflows/R-CMD-check/badge.svg)](https://github.com/pachamaltese/oscarwilder/actions?workflow=R-CMD-check)
[![Codecov test
coverage](https://codecov.io/gh/pachamaltese/oscarwilder/branch/master/graph/badge.svg)](https://codecov.io/gh/pachamaltese/oscarwilder?branch=master)
[![Lifecycle: maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
<!-- badges: end -->

## An R Package for Oscar Wilde's Complete and Presented Plays

> *"Those who find beautiful meanings in beautiful things are the cultivated. For these there is hope. They are the elect to whom beautiful things mean only beauty."* Oscar Wilde.

This package is a fork of [janeaustenr](https://github.com/juliasilge/janeaustenr) and provides access to the full texts of Oscar Wilde's 7 completed, presented plays. The UTF-8 plain text for each novel was sourced from [Project Gutenberg](https://www.gutenberg.org/), processed a bit, and is ready for text analysis. Each text is in a character vector with elements of about 70 characters. The package contains:

* `vera_or_the_nihilists`: *Vera; Or, The Nihilists*, published in 1880
* `salome`: *Salome*, published in 1881
* `the_dutchess_of_padua`: *The Dutchess of Padua*, published in 1881
* `lady_windermeres_fan`: *Lady Windermere's Fan*, published in 1882
* `a_woman_of_no_importance`: *A Woman of No Importance*, published in 1883
* `an_ideal_husband`: *An Ideal Husband*, published in 1895
* `the_importance_of_being_earnest`: *The Importance of Being Earnest*, published in 1895

There is also a function `wilde_plays()` that returns a tidy data frame of all 7 plays. 

Users should be aware that there are some differences in usage between the novels as made available by Project Gutenberg. For example, "anything" vs. "any thing", "Mr" vs. "Mr.", and using underscores vs. all caps to indicate italics/emphasis. 

The texts were obtained by using `gutenbergr::` and some additional text cleaning was made by using `stringr::`.

## Installation

You can install the released version of lp from Github with:

``` r
source("https://install-github.me/pachamaltese/oscarwilder")
```

## How to Use This Package

For some ideas on getting started with analyzing these texts, see Julia Silge's excellent post
[blog post on sentiment analysis of Austen's novels](https://juliasilge.com/blog/if-i-loved-nlp-less/). For help within R, try `?salome` or similar for getting started with the data sets.

This project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
