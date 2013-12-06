\name{example_df}
\alias{example_df}
\docType{data}
\title{
Simulated data to test \code{\link[=dfplot]{dfplot}}.
}
\description{
A small data set randomly generated to simulate 100 observation on a survey with 10 questions.
}
\usage{data(example_df)}
\format{
  A data frame with 100 observations on the following 18 variables.
  \describe{
    \item{\code{subject}}{a numeric vector : Unique number of the subject} 
    \item{\code{initial}}{a character vector : Initials of the subject} 
    \item{\code{birth}}{Birthdate} 
    \item{\code{sex}}{a factor with levels \code{male} \code{female}}
    \item{\code{study_level}}{an ordered factor with levels \code{primary} < \code{secondary} < \code{superior}}
    \item{\code{heigh}}{a numeric vector}
    \item{\code{weight}}{a numeric vector}
    \item{\code{siblings}}{a numeric vector}
    \item{\code{Q1}}{a numeric vector : question 1}
    \item{\code{Q2}}{a numeric vector}
    \item{\code{Q3}}{a numeric vector}
    \item{\code{Q4}}{a numeric vector}
    \item{\code{Q5}}{a numeric vector}
    \item{\code{Q6}}{a numeric vector}
    \item{\code{Q7}}{a numeric vector}
    \item{\code{Q8}}{a numeric vector}
    \item{\code{Q9}}{a numeric vector}
    \item{\code{Q10}}{a numeric vector}
  }
}

\examples{
data(example_df)
dfplot(example_df)
}
\keyword{datasets}
