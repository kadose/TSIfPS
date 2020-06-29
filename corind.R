#' Estimation correlation coefficients and plotting the heatmap for correlation matrixes
#' This function estimated the correlation coefficients and presented in a matrix and ggcorrplot. It is need to install and running ggcorrplot packages. This function was also used cor function from stats packages.
#' @param df1 {df1: a data frame which obtained from indices function}
#'
#' @return {cor} {Correlation coefficients matrix}
#' @return {heatmap} {Plot the heatmap for correlation matrixes}
#' @export
#'
#' @examples {corind (df1)}
corind <-
function (df1) {
  round (cor (df1),2)
 print (round (cor (df1),2))
  ggcorrplot(cor(df1))
}
