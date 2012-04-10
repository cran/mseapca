\name{pca_scaled}
\alias{pca_scaled}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{PCA for autoscaled data}
\description{
This function performs principal component analysis (PCA).
In this function, data matrix is automatically scaled to zero mean and unit variance (autoscaling) for each metabolites. 
PC scores, factor loadings and the results of statistical test (p-value and q-value by Benjamini and Hochberg) are returned. 
In this function, factor loading is defined as a correlation coefficient between PC score and each metabolite levels.
}
\usage{
pca_scaled(D)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{D}{
	dataframe of metabolite IDs and data matrix (metabolites * samples)
}
}
\details{
Blank must be set to missing values in data matrix. 
If standard deviation of metabolite levels is equal to zero, 
it is removed from PCA computation and the results of factor loadings are set to NA.
}
\value{
list of PC scores, factor loadings, p-value and q-value (by Benjamini and Hochberg),
 and contribution ratios
}
\references{
Benjamini, Yoav and Hochberg, Yosef (1995). "Controlling the false discovery rate: a practical and powerful approach to multiple testing". Journal of the Royal Statistical Society, Series B (Methodological) 57 (1): 289-300.
}
\author{
Hiroyuki Yamamoto
}
\examples{
	# --------------
	#  Sample data
	# --------------
	X <- matrix(runif(1000),nrow=100,ncol=10) # 100(metabolites)*10(samples)
	M <- as.character(c(1:100)) # metabolite IDs
	D <- data.frame(M,X)	# dataframe of metabolite IDs and data matrix

	# ---------------------------
	#  PCA for autoscaled data
	# ---------------------------
	A <- pca_scaled(D) 		# automatically scaled in pca_scaled function

	# ---------
	#  Result
	# ---------
	A[["score"]]			# PC score
	A[["factor.loading"]] 		# factor loading
	A[["p.value"]] 			# p-value of factor loading
	A[["q.value"]] 			# q-value of factor loading
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ pca/msea }

