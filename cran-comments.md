## Release summary

This is the fifth CRAN release of janeaustenr. I just submitted a release over the weekend to realign the factor order in the `austen_books` function with publication order, but I did it incorrectly; this release fixes the error. I apologize for submitting another release so soon. I have written [several unit tests](https://github.com/juliasilge/janeaustenr/blob/master/tests/testthat/test_austen_books.R) to make sure I don't make this kind of error in the future.

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