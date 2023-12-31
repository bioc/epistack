
# epistack

<!-- badges: start -->
[![R build status](https://github.com/GenEpi-GenPhySE/epistack/workflows/R-CMD-check-bioc/badge.svg)](https://github.com/GenEpi-GenPhySE/epistack/actions)
[![codecov](https://codecov.io/gh/GenEpi-GenPhySE/epistack/branch/CI/graph/badge.svg)](https://codecov.io/gh/GenEpi-GenPhySE/epistack)
<!-- badges: end -->

<img src="vignettes/example_vizbi_bos_epistack2.png" width="450" alt="Example of an epistack output">

The `epistack` package main objective is the visualizations of stacks 
of genomic tracks (such as, but not restricted to, ChIP-seq, ATAC-seq,
DNA methyation or genomic conservation data)
centered at genomic regions of interest. `epistack` needs three 
different inputs:

- a genomic score objects, such as ChIP-seq coverage or DNA methylation values, 
provided as a `GRanges` (easily obtained from `bigwig` or `bam` files)
- a list of feature of interest, such as peaks or transcription start sites,
provided as a `GRanges` (easily obtained from `gtf` or `bed` files)
- a score to sort the features, such as peak height or gene expression value


## Installation

To install the package from Bioconductor, use:

```r
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("epistack")
```

You can install the GitHub version of epistack from `R` using :

```r
remotes::install_github("GenEpi-GenPhySE/epistack")
```

## Documentation

A version of `epistack` vignette can be read [here](https://gdevailly.github.io/using_epistack.html).

## Funding

{epistack} recieved financial support from [INRAE](https://www.inrae.fr/en) 
and from [Agence Nationnale de la Recherche](https://anr.fr/en/) through the funding ANR-19-DATA-0007.

