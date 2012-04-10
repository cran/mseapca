\name{msea_sub}
\alias{msea_sub}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{MSEA by Subramanian et al.}
\description{
This function performs metabolite set enrichment analysis implemented in the same fashion as gene set enrichment analysis (Subramanian et al. 2005). 
In this function, a permutation procedure is performed for a metabolite set rather than class label. 
This procedure corresponds to a "gene set" of permutation type in GSEA-P software (Subramanian et al. 2007). 
A leading-edge subset analysis is also undertaken following the standard GSEA procedure.
}
\usage{
msea_sub(M, D, y, maxiter = 1000)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{M}{
list of metbolite set name and metabolite IDs
}
  \item{D}{
data.frame(metabolite ID, data matix)
}
  \item{y}{
response variable (e.g. PC score)
}
  \item{maxiter}{
maximum number of iterations in random permutation (default=1000)
}
}
\value{
list of normalized enrichment score, p-value and q-value for metabolite set, and the results of leading edge subset
}
\references{
Subramanian, A., Tamayo, P., Mootha, V. K., Mukherjee, S., Ebert, B. L., Gillette, M. A., Paulovich, A., Pomeroy, S. L., Golub, T. R., Lander, E. S. & Mesirov, J. P. (2005) 
Gene set enrichment analysis: A knowledge-based approach for interpreting genome-wide expression profiles. Proc. Natl. Acad. Sci. USA 102, 15545-15550.

Subramanian, A., Kuehn, H., Gould, J., Tamayo, P., Mesirov, J.P. (2007) GSEA-P: A desktop application for Gene Set Enrichment Analysis. Bioinformatics, doi: 10.1093/bioinformatics/btm369.
}
\author{
Hiroyuki Yamamoto
}
\examples{
	# ------------------------
	#  Set response variable
	# ------------------------
	## T : PC scores
	# y <- T[,1]; 				# 1st PC score

	# -----------------------------------------------------
	#  Preparing metabolome data and metabolite set list
	# -----------------------------------------------------
	## M : metabolite set list, M_ID : metabolite ID
	## Z : data matrix (metabolite IDs * samples)
	# filename <- "C:/pathway.xml"
	# M <- read_pathway(filename) 		# load metabolite set list
	# D <- data.frame(M_ID,Z) 		# preparing dataframe 

	# --------
	#  MSEA 
	# --------
	# P <- msea_sub(M,D,y)			# MSEA by Subramanian et al.
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ pca/msea }
