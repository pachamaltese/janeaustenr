## Release summary

This is the first attempted CRAN release of janeaustenr, and my first submission to CRAN.

## Test environments
* Local OS X install: R 3.2.4, R-devel
* Ubuntu 14.04 (on Travis-CI): R 3.2.4, R-devel
* Win-builder: R-devel and R-release

## R CMD check results

0 errors | 0 warnings | 0 note

There was a message about possibly invalid URLs for the Project Gutenberg URLs in the .Rd files, and about possibly mis-spelled words in DESCRIPTION (Austen's at 2:30 and 6:34, Northanger at 8:32).

* Project Gutenberg blocks automated traffic, which caused the issue with the possibly invalid URLs.
* Those words are spelled correctly.
