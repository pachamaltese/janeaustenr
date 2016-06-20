## Release summary

This is the second CRAN release of janeaustenr. I am submitting a new release to solve a problem of a formatting change in the previous release's .rda files at 10000 lines.

## Test environments

* Local OS X install: R 3.3.0
* Ubuntu 14.04 (on Travis-CI): R 3.3.0
* Win-builder: R-devel and R-release

## R CMD check results

0 errors | 0 warnings | 0 notes

There was a message about possibly invalid URLs for the Project Gutenberg URLs in the .Rd files, and about possibly mis-spelled words in DESCRIPTION ("Austen's" at 2:13 and 6:34, "Northanger" at 8:32).

* Project Gutenberg blocks automated traffic, which caused the issue with the possibly invalid URLs.
* Those words are spelled correctly.
