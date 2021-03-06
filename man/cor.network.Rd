% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/network.R
\name{cor.network}
\alias{cor.network}
\title{Differential correlation network analysis}
\usage{
cor.network(para, group, valueID = "value", cor.method = "spearman",
  threshold = 0.1, p.adjust.methods = "BH", plot = TRUE,
  graph_format = "gml", mark.groups = TRUE, top.groups = 1,
  cluster.method = 1, find.largest.component = TRUE, ...)
}
\arguments{
\item{para}{A metaXpara object}

\item{group}{Samples used for plot}

\item{valueID}{The name of the column that used for plot}

\item{cor.method}{Method for correlation:"pearson","spearman" or "kendall"}

\item{threshold}{A threshold of significance levels of 
differential correlation}

\item{p.adjust.methods}{c("local", holm", "hochberg", "hommel", 
"bonferroni", "BH", "BY", "fdr", "none")}

\item{plot}{Whether to plot network figure}

\item{cluster.method}{The function tries to find dense subgraph. 
1=cluster_fast_greedy,2=cluster_walktrap,3=cluster_edge_betweenness,
4=cluster_optimal,5=cluster_leading_eigen,6=cluster_spinglass,
7=cluster_label_prop,8=cluster_louvain,9=cluster_infomap}

\item{...}{Additional parameter}
}
\value{
The name of result file
}
\description{
Differential correlation network analysis
}
\examples{
para <- new("metaXpara")
pfile <- system.file("extdata/MTBLS79.txt",package = "metaX")
sfile <- system.file("extdata/MTBLS79_sampleList.txt",package = "metaX")
rawPeaks(para) <- read.delim(pfile,check.names = FALSE)
sampleListFile(para) <- sfile
para <- reSetPeaksData(para)
para <- missingValueImpute(para)
resfile <- cor.network(para,group=c("S","C"))
}
\author{
Bo Wen \email{wenbo@genomics.cn}
}

