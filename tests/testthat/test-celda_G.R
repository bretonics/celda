#celda_G
library(celda)
context("Testing celda_G")

celdag <- simulateCells.celda_G(L=10)

celdaG.res <- celda(counts=celdag$counts, model="celda_G", nchains=1, L=10)

test_that("CheckingVisualizeModelPerformace",{
        expect_equal(TRUE, all(!is.na(visualizeModelPerformance(celdaG.res))))
        })

