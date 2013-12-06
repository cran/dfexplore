\name{dfplot}
\alias{dfplot}
\alias{dfplot,data.frame-method}
\alias{dfplot,Data.frame.description-method}

\title{
Data Frame plot to explore NA and classes
}
\description{
Create a plot showing for each variable and observation of a data.frame the classe and if there is NA.
}
\usage{
dfplot(dfdescription)
}

\arguments{
  \item{dfdescription}{
 a data.frame or a data.frame.description object to plot.
}
}
\value{
Return a ggplot2 object. Directly ploted if not assign to a variable.
}
\author{
Joris Muller
}
\note{
Will be extended in a next version of the package with more arguments.
}

\examples{
data(example_df)
dfplot(example_df)
}