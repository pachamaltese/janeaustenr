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

## Installation

To install the package type the following:

```
library(devtools)
install_github("juliasilge/janeaustenr")
library(janeaustenr)
```

## How to Use This Package

For some ideas on getting started with analyzing these texts, go to... For help within R, try `?persuasion` or similar for getting started with the data sets.
