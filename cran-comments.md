## Release summary

This is the fourth CRAN release of janeaustenr. I am submitting a new release to realign the factor order in the `austen_books` function with publication order.

## Test environments

* Local OS X install: R 3.3.1
* Ubuntu 12.04 (on Travis-CI): R 3.3.1
* Win-builder: R-devel and R-release

## R CMD check results

0 errors | 0 warnings | 0 notes

There was a message about possibly invalid URLs for the Project Gutenberg URLs in the .Rd files and README, and about possibly mis-spelled words in DESCRIPTION ("Austen's" at 2:13 and 6:34, "Northanger" at 8:32).

* Project Gutenberg blocks automated traffic, which caused the issue with the possibly invalid URLs.
* Those words are spelled correctly.

## Downstream dependencies

I ran R CMD check on the downstream dependencies (results at https://github.com/juliasilge/janeaustenr/tree/master/revdep) and there were no problems.