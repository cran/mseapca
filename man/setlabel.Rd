\name{setlabel}
\alias{setlabel}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Generate binary label matrix of metabolite set}
\description{
This function generates binary label matrix of metabolite IDs and metabolite sets.
This is mainly used to be called by other functions, and used 
to count the number of metabolites in a specific metabolite set. 
}
\usage{
setlabel(M_ID, M)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{M_ID}{
metabolite IDs of detected metabolites in data
}
  \item{M}{
list of metabolite set name and metabolite IDs
}
}
\details{
If single peak has multiple metabolite IDs in M_ID, split by "," or ";".
}
\value{
binary label matrix of metabolite IDs in metabolite sets
}
\author{
Hiroyuki Yamamoto
}
\examples{
	## M_ID : metabolite IDs, M : metabolite set list
	# L <- setlabel(M_ID,M)	# binary label matrix
	# colSums(L)	# the number of metabolites in each metabolite set
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ list }
