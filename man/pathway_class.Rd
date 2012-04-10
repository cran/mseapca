\name{pathway_class}
\alias{pathway_class}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Convert metabolite set (multiple) / tar.gz to list}
\description{
	Convertion of KEGG's tar.gz files (e.g. hsa.tar.gz) to metabolite set list
}
\usage{
pathway_class(filepath)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{filepath}{
file path of KEGG's tar.gz files
}
}
\details{
The tar.gz files should be downloaded from KEGG FTP according to your own licence.
}
\value{
list of metabolite set name and metabolite IDs
}
\author{
Hiroyuki Yamamoto
}
\examples{
	# filepath <- "C:/hsa.tar.gz"		# *.tar.gz downloaded from KEGG
	# Z <- pathway_class(filepath)		# convert to list
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ list }
