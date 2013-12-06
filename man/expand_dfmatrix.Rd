\name{expand_dfmatrix}
\alias{expand_dfmatrix}
\title{
Transform a data frame containing matrix to a data frame without matrix
}
\description{
Data frames may have components matrices components. This is unusual, but technically allowed and necessary in some cases. Methods of dfexplore package have to deal with this.
}
\usage{
expand_dfmatrix( dataframe, matrix_var = NA)
}

\arguments{
  \item{dataframe}{ data.frame - a data frame with a matrix included}
  
  \item{matrix_var}{ integer - position of the column containing matrix. If no argument are given, calculate these positions}
  
}

\value{
A data.frame with all the data. The column wich are not matrix keep unchanged and column with matrix are transform to a data.frame and combinded.
}
\author{
Joris Muller
}

\examples{
dataframe_with_matrix <- simulate_dataframe( includeMatrix=TRUE)
str(dataframe_with_matrix)
dataframe_without_matrix <- expand_dfmatrix(dataframe_with_matrix)
str(dataframe_without_matrix)

}