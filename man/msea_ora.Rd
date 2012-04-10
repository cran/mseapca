\name{msea_ora}
\alias{msea_ora}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{MSEA by over representation analysis}
\description{
This function performs metabolite set enrichment analysis by over representation analysis (ORA). 
Statistical hypothesis test of cross tabulation is performed by one-sided Fisher's exact test.
}
\usage{
msea_ora(SIG, ALL, M)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{SIG}{
Metabolite IDs of significant metabolites
}
  \item{ALL}{
Metabolite IDs of all detected metabolites
}
  \item{M}{
list of metabolite set name and metabolite IDs
}
}
\value{
list of p-value and q-value for metabolite set and selected (significant) metabolite IDs for each metabolite set
}
\references{
Draghici S, Khatri P, Martins RP, Ostermeier GC, Krawetz SA.
Global functional profiling of gene expression.
Genomics. 2003 Feb;81(2):98-104.
}
\author{
Hiroyuki Yamamoto
}
\examples{
	# -----------------------
	#  load metabolite set
	# -----------------------
	# filename <- "C:/pathway.xml"
	# M <- read_pathway(filename) 		# load metabolite set list
	
	# ----------------------
	#  Set metabolite IDs
	# ----------------------
	## p : dataframe of metabolite IDs and p-value of factor loadings in PCA
	## fl : dataframe of metabolite IDs and factor loadings in PCA

	# ALL <- p[,1]				# All metabolite IDs
	# SIG <- p[p[,2] < 0.05 & fl[,2]<0,1] 
            ## negatively significant metabolites selected by factor loading

	# ---------------
	#  MSEA by ORA
	# ---------------
	# B <- msea_ora (SIG, ALL, M)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ pca/msea }
