## Obtain texts from Gutenberg Project
library(gutenbergr)
vera_or_the_nihilists <- gutenberg_download(26494)$text
salome <- gutenberg_download(42704)$text
the_dutchess_of_padua <- gutenberg_download(875)$text
lady_windermeres_fan <- gutenberg_download(790)$text
a_woman_of_no_importance<- gutenberg_download(854)$text
an_ideal_husband <- gutenberg_download(885)$text
the_importance_of_being_earnest <- gutenberg_download(844)$text

library(stringr)
vera_or_the_nihilists <- str_trim(vera_or_the_nihilists, side = "both")
salome <- str_trim(salome, side = "both")
the_dutchess_of_padua <- str_trim(the_dutchess_of_padua, side = "both")
lady_windermeres_fan <- str_trim(lady_windermeres_fan, side = "both")
a_woman_of_no_importance <- str_trim(a_woman_of_no_importance, side = "both")
an_ideal_husband <- str_trim(an_ideal_husband, side = "both")
the_importance_of_being_earnest <- str_trim(the_importance_of_being_earnest, side = "both")

# Remove illustrations and cover references
salome <- salome[6:length(salome)]

## Now, add the data files to the package
usethis::use_data(vera_or_the_nihilists, overwrite = TRUE)
usethis::use_data(salome, overwrite = TRUE)
usethis::use_data(lady_windermeres_fan, overwrite = TRUE)
usethis::use_data(a_woman_of_no_importance, overwrite = TRUE)
usethis::use_data(the_importance_of_being_earnest, overwrite = TRUE)
usethis::use_data(an_ideal_husband, overwrite = TRUE)
usethis::use_data(the_dutchess_of_padua, overwrite = TRUE)
