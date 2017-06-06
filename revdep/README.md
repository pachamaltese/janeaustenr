# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.4.0 (2017-04-21) |
|system   |x86_64, darwin15.6.0         |
|ui       |RStudio (1.0.143)            |
|language |(EN)                         |
|collate  |en_US.UTF-8                  |
|tz       |America/New_York             |
|date     |2017-06-05                   |

## Packages

|package     |*  |version |date       |source                            |
|:-----------|:--|:-------|:----------|:---------------------------------|
|janeaustenr |*  |0.1.5   |2017-06-06 |local (juliasilge/janeaustenr@NA) |

# Check results

3 packages

|package  |version | errors| warnings| notes|
|:--------|:-------|------:|--------:|-----:|
|hunspell |2.5     |      0|        0|     0|
|sparklyr |0.5.5   |      0|        0|     0|
|tidytext |0.1.2   |      2|        1|     0|

## hunspell (2.5)
Maintainer: Jeroen Ooms <jeroen@berkeley.edu>  
Bug reports: https://github.com/ropensci/hunspell/issues

0 errors | 0 warnings | 0 notes

## sparklyr (0.5.5)
Maintainer: Javier Luraschi <javier@rstudio.com>  
Bug reports: https://github.com/rstudio/sparklyr/issues

0 errors | 0 warnings | 0 notes

## tidytext (0.1.2)
Maintainer: Julia Silge <julia.silge@gmail.com>  
Bug reports: http://github.com/juliasilge/tidytext/issues

2 errors | 1 warning  | 0 notes

```
checking examples ... ERROR
Running examples in ‘tidytext-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: corpus_tidiers
> ### Title: Tidiers for a corpus object from the quanteda package
> ### Aliases: corpus_tidiers glance.corpus tidy.corpus
> 
> ### ** Examples
> 
> 
> if (requireNamespace("quanteda", quietly = FALSE)) {
+  data("inaugCorpus", package = "quanteda")
+ 
+  inaugCorpus
+ 
+  tidy(inaugCorpus)
+ }
Loading required namespace: quanteda
Warning in data("inaugCorpus", package = "quanteda") :
  data set ‘inaugCorpus’ not found
Error: object 'inaugCorpus' not found
Execution halted

checking tests ... ERROR
  Running ‘testthat.R’
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  5: eval(expr, pf)
  6: quanteda::dfm(quanteda::inaugCorpus)
  7: quanteda::inaugCorpus
  8: getExportedValue(pkg, name)
  9: stop(gettextf("'%s' is not an exported object from 'namespace:%s'", name, getNamespaceName(ns)), 
         call. = FALSE, domain = NA)
  
  testthat results ================================================================
  OK: 127 SKIPPED: 0 FAILED: 3
  1. Error: Can tidy corpus from quanteda package (@test-corpus-tidiers.R#23) 
  2. Error: can tidy a quanteda dictionary (@test-dictionary-tidiers.R#9) 
  3. Error: Can tidy dfm from quanteda (@test-sparse-tidiers.R#28) 
  
  Error: testthat unit tests failed
  Execution halted

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
The following objects are masked from 'package:stats':

    filter, lag

The following objects are masked from 'package:base':

    intersect, setdiff, setequal, union
... 8 lines ...

The following object is masked from 'package:ggplot2':

    annotate

Warning in data("inaugCorpus", package = "quanteda") :
  data set 'inaugCorpus' not found
Quitting from lines 79-85 (tidying_casting.Rmd) 
Error: processing vignette 'tidying_casting.Rmd' failed with diagnostics:
object 'inaugCorpus' not found
Execution halted
```

