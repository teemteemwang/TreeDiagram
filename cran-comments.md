## Resubmission March 25, 2021

Error message:
* installing to library '/home/hornik/tmp/R.check/r-devel-clang/Work/build/Packages'
* installing *source* package 'TreeDiagram' ...
** package 'TreeDiagram' successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
Error: object 'is.empty' is not exported by 'namespace:spatstat'
Execution halted
ERROR: lazy loading failed for package 'TreeDiagram'
* removing '/home/hornik/tmp/R.check/r-devel-clang/Work/build/Packages/TreeDiagram'

Changes made:
1) removed is.empty(dataset) from tree.info() and replaced by "if(dim(dataset)[1]==0|is.NULL(dataset)){...}"
2) embeded data (breast cancer data; see cancer.rd) in the "man" folder
3) update version number form 0.1.0 to 0.1.1
4) remove "ImportFrom utlis str" in treeDiagram.R and Description

Explanation:
1) is.empty() is not found in the "spatstat" package
4) str() function is only used dor debugging purpose, so it won't be used for any internal or external functions for treeDiagram; thus, we removed it from the import list
