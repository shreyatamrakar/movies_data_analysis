# setting up the working directory and loading movies data set into data frame.
#setwd(choose.dir())
getwd()
data = read.csv("my_dataset/movies.csv")
str(data)
colnames(data)

# Release Date
summary(data$release_date)

# Vote Average
summary(data$vote_average)

# Vote Count
summary(data$vote_count)

# Popularity
summary(data$popularity)

# install and load ggplot2 library 
install.packages("ggplot2")
library(ggplot2)

# creating a scatter plot with trend line
ggplot(data, aes(x = popularity, y = vote_average)) +
  geom_point(color = "darkblue", alpha = 0.7) +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Relationship between Popularity and Vote Average",
       x = "Popularity", y = "Vote Average")