## This is the script used to process the UTF-8 plain text files from
## Project Gutenberg and add them to the janeaustenr package.
## Project Gutenberg doesn't like automated traffic very much so be careful 
## trying to connect too often.

library(readr)
library(devtools)

## First, read the plain text files from Project Gutenberg
## Skip lines at the beginning to remove Project Gutenberg header information
## Remove lines at the end to get rid of Project Gutenberg footer information
## A few of these files ended up with NA lines

sensesensibility <- read_lines("http://www.gutenberg.org/cache/epub/161/pg161.txt", skip = 33)
sensesensibility <- sensesensibility[1:(length(sensesensibility) - 370)]
sensesensibility <- sensesensibility[!is.na(sensesensibility)]

prideprejudice <- read_lines("http://www.gutenberg.org/cache/epub/1342/pg1342.txt", skip = 30)
prideprejudice <- prideprejudice[1:(length(prideprejudice) - 366)]
prideprejudice <- prideprejudice[!is.na(prideprejudice)]

## Mansfield Park has one line with a non-ASCII character (a British pound
## symbol); let's edit it for CRAN

mansfieldpark <- read_lines("http://www.gutenberg.org/cache/epub/141/pg141.txt", skip = 29)
mansfieldpark <- mansfieldpark[1:(length(mansfieldpark) - 367)]
mansfieldpark <- mansfieldpark[!is.na(mansfieldpark)]
mansfieldpark[14652] <- "the command of her beauty, and her 20,000 pounds, any one who could satisfy the"

emma <- read_lines("http://www.gutenberg.org/cache/epub/158/pg158.txt", skip = 29)
emma <- emma[1:(length(emma) - 367)]
emma <- emma[!is.na(emma)]

northangerabbey <- read_lines("http://www.gutenberg.org/cache/epub/121/pg121.txt", skip = 29)
northangerabbey <- northangerabbey[1:(length(northangerabbey) - 383)]
northangerabbey <- northangerabbey[!is.na(northangerabbey)]

## Persuasion also has a line with a non-ASCII character (e with an accent); 
## let's edit it for CRAN

persuasion <- read_lines("http://www.gutenberg.org/cache/epub/105/pg105.txt", skip = 35)
persuasion <- persuasion[1:(length(persuasion) - 371)]
persuasion <- persuasion[!is.na(persuasion)]
persuasion[7066] <- "concert.  Something so formal and _arrange_ in her air!  and she sits so"


## Now, add the data files to the package

devtools::use_data(sensesensibility, overwrite = TRUE)
devtools::use_data(prideprejudice, overwrite = TRUE)
devtools::use_data(mansfieldpark, overwrite = TRUE)
devtools::use_data(emma, overwrite = TRUE)
devtools::use_data(northangerabbey, overwrite = TRUE)
devtools::use_data(persuasion, overwrite = TRUE)

## Finished!
