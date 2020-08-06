test_that("test for some helper function:", {
  # newick format string of a decision tree for breast cancer
  breast_cancer<-"(((BMI=25.745,BMI=29.722)Resistin=13.248)Age>44.5,(((((Age=70)Adiponectin<9.3482)BMI<32.275)Glucose<111)Leptin>7.93315)Age>48.5)Glucose=91.5;"
  result = newickToTree(breast_cancer)
  
  # correctly turning a newick's string to a list of node number
  expect_equal(result$node_index, c(1,2,3,5,7,10,11,15,30,60,120)) 
  
  # correctly returning a nested list of nodes number along each path from root to such node.
  # here we want to check if the length of this nested list matches the total number of nodes of a tree for breast cancer data
  expect_equal(length(get_nodes_list(result$node_index)),11)

  
})

