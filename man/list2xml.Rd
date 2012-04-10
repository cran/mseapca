\name{list2xml}
\alias{list2xml}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Convert metabolite set / list to XML format}
\description{
This function converts metabolite set (list to XML format).
}
\usage{
list2xml(filepath, M)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{filepath}{
file path of metabolite set (original file)
}
  \item{M}{
list of metabolite set and metabolite IDs
}
}
\details{
The "filepath" is only used for writing a original path in XML.
}
\value{
XML format of metabolite set
}
\author{
Hiroyuki Yamamoto
}
\examples{
	# ---------------------------------
	#  Convert KEGG's tar.gz to list
	# ---------------------------------
	# filepath <- "C:/hsa.tar.gz"		# location of original files of metabolite set
	# Z <- pathway_class(filepath)		# making metabolite set list
	# L <- list2xml(filepath, Z)		# xml format

	# ----------------------
	#  Convert csv to list
	# ----------------------
	# filepath <- "C:/pathway.csv"		# csv file
	# Z <- csv2list(filepath)		# csv file to list
	# L <- list2xml(filepath, Z)		# xml format

	# ----------------------
	#  Convert list to xml
	# ----------------------
	# savefile <- "kegg_test.xml"		# set filename (XML)
	# fullpath <- paste(dirname(filepath),savefile,sep="/")	# fullpath of saved XML file
	# saveXML(L,fullpath)			# save XML
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ list }
