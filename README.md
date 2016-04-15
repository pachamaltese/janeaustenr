[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/janeaustenr)](https://cran.r-project.org/package=janeaustenr)
[![Build Status](https://travis-ci.org/juliasilge/janeaustenr.svg?branch=master)](https://travis-ci.org/juliasilge/janeaustenr)

# janeaustenr

## An R Package for Jane Austen's Complete Novels

> “The person, be it gentleman or lady, who has not pleasure in a good novel, 
> must be intolerably stupid.”

(from Mr. Tilney in *Northanger Abbey*)

This package provides access to the full texts of Jane Austen's 6 completed, published novels. The UTF-8 plain text for each novel was sourced from [Project Gutenberg](https://www.gutenberg.org/), processed a bit, and is ready for text analysis. Each text is in a character vector with elements of about 70 characters. The package contains:

* `sensesensibility`:  *Sense and Sensibility*, published in 1811
* `prideprejudice`:  *Pride and Prejudice*, published in 1813
* `mansfieldpark`:  *Mansfield Park*, published in 1814
* `emma`:  *Emma*, published in 1815
* `northangerabbey`:  *Northanger Abbey*, published posthumously in 1818
* `persuasion`:  *Persuasion*, also published posthumously in 1818

There is also a function `austen_books()` that returns a tidy data frame of all 6 novels.

## Installation

To install the package type the following:

```
install.packages("janeaustenr")
library(janeaustenr)
```

Or you can install the development version from Github:

```
library(devtools)
install_github("juliasilge/janeaustenr")
library(janeaustenr)
```

## How to Use This Package

For some ideas on getting started with analyzing these texts, see my [blog post on sentiment analysis of Austen's novels](http://juliasilge.com/blog/If-I-Loved-NLP-Less/). For help within R, try `?persuasion` or similar for getting started with the data sets.

This project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.