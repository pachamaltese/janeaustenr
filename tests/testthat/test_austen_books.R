# tests for austen_books function

context("Tidy dataframe for books")

suppressPackageStartupMessages(library(dplyr))

test_that("tidy frame for Austen books is right", {
        d <- austen_books() %>% 
                group_by(book) %>%
                summarise(total_lines = n())
        expect_equal(nrow(d), 6)
        expect_equal(ncol(d), 2)
        expect_equal(as.character(d$book[1]), "Sense & Sensibility")
        expect_equal(as.character(d$book[6]), "Persuasion")
})