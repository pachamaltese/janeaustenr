# tests for austen_books function

context("Tidy dataframe for books")

suppressPackageStartupMessages(library(dplyr))

test_that("factor order is correct", {
        d <- wilde_plays()
        expect_equal(levels(d$play)[1], "Vera; Or, The Nihilists")
        expect_equal(levels(d$play)[7], "The Importance of Being Earnest")
})

test_that("tidy frame for Wilde plays is right", {
        d <- wilde_plays() %>% 
                group_by(play) %>%
                summarise(total_lines = n())
        expect_equal(nrow(d), 7)
        expect_equal(ncol(d), 2)
        # the factor levels still in the right order?
        expect_equal(as.character(d$play[1]), "Vera; Or, The Nihilists")
        expect_equal(as.character(d$play[7]), "The Importance of Being Earnest")
        # The Importance of Being Earnest has fewer lines than An Ideal Husband?
        expect_lt(d$total_lines[7], d$total_lines[6])
})
