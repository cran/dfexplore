\name{simulate_dataframe}
\alias{simulate_dataframe}
\title{
Simulate data frames with missing values
}
\description{
Simulate a data frame representing a questionnaire randomly generated with n observation on a survey with questions including missing values. The aim of this data is to test the methods of dfexplore package based on different kind of data but should be used 
}
\usage{
simulate_dataframe(nsubjects = 100, nquestions = 10, 
                  includeMatrix = FALSE)
}

\arguments{
  \item{nsubjects}{ integer - number of subjects in the data frame}
  
  \item{nquestions}{ integer - number of questions in the data frame}
  
  \item{includeMatrix}{ boolean - does the answer of the questions should be included as a matrix in the final data frame (see details)}
}
\details{

Data frames may have components matrices components. This is unusual, but technically allowed and necessary in some cases. Methods of dfexplore package have to deal with this.}
\value{
A data.frame wih nquestions + 8 columns and nsubjects observations with various data classes. It should countain a matrix component if includeMatrix = TRUE.
}
\author{
Joris Muller
}


\seealso{
There is already some simulated data frames included as \code{\link{example_df}}
}
\examples{
simulated <- simulate_dataframe(nsubjects=200)
str(simulated)
dfplot(simulated)
}