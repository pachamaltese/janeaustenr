## This is the script used to download the Project Gutenberg text files and
## add them to the janeaustenr package for v0.1.1 

library(gutenbergr)
sensesensibility <- gutenberg_download(161)$text
sensesensibility <- sensesensibility[14:length(sensesensibility)]
prideprejudice <- gutenberg_download(1342)$text
mansfieldpark <- gutenberg_download(141)$text
mansfieldpark <- iconv(mansfieldpark, "latin1", "UTF-8")
emma <- gutenberg_download(158)$text
northangerabbey <- gutenberg_download(121)$text
persuasion <- gutenberg_download(105)$text

## Now, add the data files to the package

devtools::use_data(sensesensibility, overwrite = TRUE)
devtools::use_data(prideprejudice, overwrite = TRUE)
devtools::use_data(mansfieldpark, overwrite = TRUE)
devtools::use_data(emma, overwrite = TRUE)
devtools::use_data(northangerabbey, overwrite = TRUE)
devtools::use_data(persuasion, overwrite = TRUE)

########################################################################
# script for v0.1.0 .rda files is below 
########################################################################

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

mansfieldpark <- read_lines("http://www.gutenberg.org/cache/epub/141/pg141.txt", skip = 29)
mansfieldpark <- mansfieldpark[1:(length(mansfieldpark) - 367)]
mansfieldpark <- mansfieldpark[!is.na(mansfieldpark)]

emma <- read_lines("http://www.gutenberg.org/cache/epub/158/pg158.txt", skip = 29)
emma <- emma[1:(length(emma) - 367)]
emma <- emma[!is.na(emma)]

northangerabbey <- read_lines("http://www.gutenberg.org/cache/epub/121/pg121.txt", skip = 29)
northangerabbey <- northangerabbey[1:(length(northangerabbey) - 383)]
northangerabbey <- northangerabbey[!is.na(northangerabbey)]

persuasion <- read_lines("http://www.gutenberg.org/cache/epub/105/pg105.txt", skip = 35)
persuasion <- persuasion[1:(length(persuasion) - 371)]
persuasion <- persuasion[!is.na(persuasion)]

## Now, add the data files to the package

devtools::use_data(sensesensibility, overwrite = TRUE)
devtools::use_data(prideprejudice, overwrite = TRUE)
devtools::use_data(mansfieldpark, overwrite = TRUE)
devtools::use_data(emma, overwrite = TRUE)
devtools::use_data(northangerabbey, overwrite = TRUE)
devtools::use_data(persuasion, overwrite = TRUE)

## Finished!

## Making a hex sticker for janeaustenr

hexSticker::sticker("https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Jane_Austen_signature_from_her_will.svg/2000px-Jane_Austen_signature_from_her_will.svg.png", 
                    package="", 
                    spotlight = FALSE,
                    h_size = 1.5,
                    h_color = "black",
                    h_fill = "#854467",
                    p_size=0.5, p_y = 0.1,
                    p_family = "RobotoCondensed-Regular",
                    s_x=1, s_y=0.95, s_width=0.96,
                    url="janeaustenr",
                    u_size = 3,
                    u_y = 0.11,
                    u_color = "black",
                    filename="tools/janeaustenr.png")
