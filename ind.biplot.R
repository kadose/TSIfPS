#' Plotting a graph based on first two principal components
#' @description {This function plotted a biplot according to fist PCAs. This function used biplot function from stats packages.}
#' @param {df1} {{df1: a data frame which obtained from indices function}}
#'
#' @return {biplot} {biplot of two first PCAs}
#' @export
#' @author {Peyman Sharifi}
#' @examples {ind.biplot (df1)}
ind.biplot <-
function (df1){
         biplot(pca.ind,choices=1:2, pc.biplot = T)
 }
