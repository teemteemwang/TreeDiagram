# TreeDiagram

To make an R package ready for CRAN, use the template above. \
Unzip package file (for example into ~/Desktop/TreeDiagram), and then modify it and then install locally with this command: 

# install package:
remove.packages("TreeDiagram") \
install.packages("~/Desktop/TreeDiagram", repos = NULL, type = "source", INSTALL_opts="--install-tests") \
library(TreeDiagram)
  
# test with example
cancer <- read.csv(url("https://archive.ics.uci.edu/ml/machine-learning-databases/00451/dataR2.csv")) \
cancer$Classification <- factor(cancer$Classification)\
library(tree)\
t_cancer <- tree::tree(Classification ~ ., data=cancer)

setwd("~/Desktop")\
treeDiagram(cancer,t_cancer[[1]],"Classification","tree diagram for tree()")

see 'man/treeDiagram.Rd' for more description for function 'treeDiagram()'.
