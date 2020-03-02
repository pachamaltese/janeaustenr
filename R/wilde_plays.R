#' Tidy data frame of Oscar Wilde's 7 completed, presented plays
#' 
#' Returns a tidy data frame of Oscar Wilde's 7 completed, presented plays with 
#' two columns: \code{text}, which contains the text of the plays divided into 
#' elements of up to about 70 characters each, and \code{play}, which contains
#' the titles of the plays as a factor in order of publication.
#' 
#' @details Users should be aware that there are some differences in usage 
#' between the novels as made available by Project Gutenberg. For example, 
#' "anything" vs. "any thing", "Mr" vs. "Mr.", and using underscores vs. all 
#' caps to indicate italics/emphasis.
#' 
#' @return A data frame with two columns: \code{text} and \code{play}
#' 
#' @name wilde_plays
#' 
#' @examples 
#' 
#' library(dplyr)
#'
#' wilde_plays() %>% 
#'     group_by(play) %>%
#'     summarise(total_lines = n())
#'
#' @export
wilde_plays <- function(){
        plays <- list(
                "Vera; Or, The Nihilists" = oscarwilder::vera_or_the_nihilists,
                "Salome" = oscarwilder::salome,
                "The Dutchess of Padua" = oscarwilder::the_dutchess_of_padua,
                "Lady Windermere's Fan" = oscarwilder::lady_windermeres_fan,
                "A Woman of No Importance" = oscarwilder::a_woman_of_no_importance,
                "An Ideal Husband" = oscarwilder::an_ideal_husband,
                "The Importance of Being Earnest" = oscarwilder::the_importance_of_being_earnest
        )
       ret <- data.frame(text = unlist(plays, use.names = FALSE), 
                         stringsAsFactors = FALSE)
       ret$play <- factor(rep(names(plays), sapply(plays, length)))
       ret$play <- factor(ret$play, levels = unique(ret$play))
       structure(ret, class = c("tbl_df", "tbl", "data.frame"))
}
