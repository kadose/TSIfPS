#' Plotting a cluster diagram
#' @description {This function estimated used the Distance Matrix from previous stage and Plotted a cluster diagram by hclust  function from stats packages.}
#' @param {dh} {a dissimilarity structure as produced by ind.dist.}
#' @param ...
#' @details {The Arguments of this function is all of the hclust function, except of df1 that is fixed an obtained from indices function.}
#' @return {Cluster diagram}
#' @export
#' @author {Peyman Sharifi}
#' @examples {ind.clust (dh, "ward")}
ind.clust <-
function (dh,...){
   hc <<- hclust(dh,...)
   hc
   plot(hc)
 }
