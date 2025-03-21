% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/treemut.R
\name{assign_to_tree}
\alias{assign_to_tree}
\title{Assigns mutations to a tree topology and sets the branch lengths based on the hard assignment of mutations to branches.}
\usage{
assign_to_tree(
  tree,
  mtr,
  depth,
  error_rate = rep(0.01, dim(mtr)[2]),
  maxits = 5,
  vaf = 0.5,
  bverbose = TRUE
)
}
\arguments{
\item{tree}{phylo. Should  already include the zeros outgroup..}

\item{mtr}{Mutant read count matrix. Each row is a mutation and each colomn is a clonal sample BLAH}

\item{depth}{Depth count matrix. Each row is a mutation and each colomn is a clonal sample}

\item{error_rate}{Error rate. This is intended as a coarse error measure and should not take more than 4 distinct values. Useful if a sample is mildly contaminated error->0.1.}

\item{maxits}{Number of EM iterations.}

\item{bverbose}{Whether to report progress}

\item{VAF}{Expected VAF of mutant}
}
\value{
Returns a list containing:
 tree: the adjusted tree
 summary: a data.framethat is aligned with the input matrices and maps the mutations to branches:
  summary$edge_ml : Specifies the index of the branch in the tree edge matrix.  
  summary$pval :  A heuristic pvalue assessing the hypothesis that the mutation is consistent with the provided tree topology.
}
\description{
Assigns mutations to a tree topology and sets the branch lengths based on the hard assignment of mutations to branches.
}
