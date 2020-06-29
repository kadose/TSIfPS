#' Plotting two dimensional graph based on yp ad ys
#'@description {This function plotted a two dimensional graph based on yp ad ys with genotype  name.}
#' @param data {A data frame including genotype name (Gen), yp and ys}
#' @param x {Response variable in non-stress condition (yp)}
#' @param y {ys: Response variable in stress condition (ys)}
#' @details {As a result, users can assign the genotypes to groups A, B, C, and D, as described by Fernandez (1992). According to Fernandez (1992) report, genotypes can be classified into four groups based on their performance in stressed and non-stressed conditions: group A: genotypes with high yield under both stressed and non-stressed conditions, group B: genotypes with high yield under non-stressed conditions, group C: genotypes with high yield under stressed conditions, group D: genotypes with poor performance under both stressed and non-stressed conditions. A suitable index must be able to distinguish group A from the other groups.}
#' @return {plot} {A plot for detecting tolerant and susceptible genotypes}
#' @export
#'
#' @author {Peyman Sharifi}
#'
#' @references {Fernandez, G.C.J. 1992. Effective selection criteria for assessing plant stress tolerance. In proceeding of a Symposium, Taiwan, 13-18 Aug. pp.}
#'
#' @examples {data (ricedrt)
#'  yp.ysplot.genname(data,x,y)}
yp.ysplot.genname <-
function (data,x,y) {
  x <<- data [,2]
  y <<- data [,3]
  plot(x,y, xlab = "yp", ylab = "ys")
  abline(mean(y), 0, lwd=1, lty=2)
  abline(v = mean(x), lwd=1, lty=2)
  text(x,y, data [,1], cex=0.9, font=2, pos=4)
}
