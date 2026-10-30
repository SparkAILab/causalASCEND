# causalASCEND 0.99.3

* Pairs holding only an R2 (non-descendant) relation are tested again in
  later sweeps; R2 in both directions makes a pair unrelated (symmetry).

# causalASCEND 0.99.2

* README wording.

# causalASCEND 0.99.1

* `SummarizedExperiment` is now imported (Bioconductor dependency).
* `simulateTwoTier()` no longer calls `set.seed()`; call it before simulating.
* Labelled vignette chunks, 4-space indentation, no `suppressWarnings()`.

# causalASCEND 0.99.0

* Initial Bioconductor submission.
* `ascend()` for matrices, data frames and `SummarizedExperiment` objects;
  `ascendMultiAssay()` for `MultiAssayExperiment` objects.
* `AscendResult` class with `ancestralMatrix()`, `ancestralEdges()`,
  `pairPValues()` and `ascendStats()`.
* `simulateTwoTier()`, `trueAncestral()` and `evaluateAncestral()` for
  simulation and benchmarking.
* Results are identical to the implementation used in the paper.
