#' Estimation of first three principal components and plotting a scree plot.
#' @description {This function estimated the first three principal components and plotting a screeplot. This function used percomp function from stats packages and plot function from graphics packages.}
#' @param {df1} {{df1: a data frame which obtained from indices function}}
#'
#' @return {3PCAs} First three principal components
#' @return {Scree plot} {Scree plot of all of PCAs}
#' @export
#'
#' @examples {pca.stress(df1)}
pca.stress <-
function(df1) {
   pca.ind <<- prcomp(df1, scale. = TRUE, rank. = 3);
   print (summary(pca.ind))
   print (pca.ind)
   plot(pca.ind,type="lines")
   }
