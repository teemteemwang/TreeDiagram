# treeDiagram2020

To make an R package ready for CRAN, use the template above. 
Unzip package file (for example into ~/Desktop/treeDiagram2020), and then modify it and then install locally with this command: 

# install package:
remove.packages("treeDiagram2020") \
install.packages("~/Desktop/treeDiagram2020", repos = NULL, type = "source", INSTALL_opts="--install-tests") \
library(treeDiagram2020)
  
# test with example
cancer <- read.csv(url("https://archive.ics.uci.edu/ml/machine-learning-databases/00451/dataR2.csv")) \newline
cancer$Classification <- factor(cancer$Classification)\n
library(tree)\n
t_cancer <- tree::tree(Classification ~ ., data=cancer)\n

setwd("~/Desktop")\n
treeDiagram(cancer,t_cancer[[1]],"Classification","tree diagram for tree()")\n

see 'man/treeDiagram.Rd' for more description for function 'treeDiagram()'.
