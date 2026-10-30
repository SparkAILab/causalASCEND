## Regression test against stored output. The fixture holds the output of
## ascend() 0.99.3 on four simulated data sets. Up to 0.99.2 the package
## returned exactly what the paper's code returned (R/ascend.R of
## https://github.com/SparkAILab/Ascend); 0.99.3 also re-tests pairs that
## hold only an R2 relation, as in the paper's Algorithm 1.
test_that("ascend() reproduces the stored reference output", {
    ref <- readRDS(test_path("fixtures", "reference_results.rds"))
    for (r in ref) {
        a <- r$args
        set.seed(a$seed)
        sim <- simulateTwoTier(a$n, a$dz, a$dx, r2 = a$r2, sparsity = a$sp,
            pCross = a$pc, effect = a$xe)
        res <- ascend(sim$background, sim$foreground)
        expect_identical(ancestralMatrix(res), r$M)
        expect_equal(pairPValues(res), r$pairP)
        expect_identical(res@rule, r$rule)
    }
})
