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
dfplot(dfdescription,title=NULL)
}

\arguments{
  \item{dfdescription}{
 a data.frame or a data.frame.description object to plot.
}
  \item{title}{a character vector of lenght 1. Title of the data.frame. By default the name of the the object data.frame.}
}
\value{
Return a ggplot2 object. Directly ploted if not assign to a variable. Because it's a ggplot object, every layer could be changed (see example)
}

\seealso{

\code{\link[=ggplot]{ggplot}}
}

\author{
Joris Muller
}

\examples{
# Plot quickly a representation of the "example_df" data.frame
dfplot(example_df)

# Plot it with some changes using ggplot layers
graph_data.frame <- dfplot(example_df)

# Change title
with_title<-graph_data.frame + ggtitle("An example of dfplot() with example_df")
with_title

# Change text orientation
horizontal_text<-with_title +  theme(axis.text.x = element_text(angle = 0))
horizontal_text

# Add subject number in the column subject
# May be useful if you want to find quickly the number of a subject
nb_obs <- nrow(example_df)
with_subject_number<-horizontal_text + 
  geom_text(data =example_df,
    aes(y=1:nb_obs,
        x=rep(x=c(0.7,1,1.3),  length.out=nb_obs),
        label =example_df$subject),
    size=3) 

with_subject_number
}