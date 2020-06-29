#' Estimating average of response variable in stress and non-stress conditions and stress index
#
#' @param data {A data frame including genotype name (Gen), yp and ys}
#' @param x {Response variable in non-stress condition (yp)}
#' @param y {ys: Response variable in stress condition (ys)}
#' @description {This function estimated average of response variable in stress and non-stress conditions and stress index.}
#' @return {Yp }{Average value of response variable in non-stress condition}
#' @return {Ys }{Average value of response variable in stress condition}
#' @return {SI }{Stress Index }
#' @author {Peyman Sharifi}
#'
#' @export
#'
#' @examples {data (ricedrt)
#' {avr.si (ricedrt,x,y)}
#' }
avr.si <-
function (data,x, y){
  x <<- data [,2]
  y <<- data [,3]
  Yp <<- mean (data [,2])
  Ys <<- mean (data [,3])
  SI <<- 1-(Ys/Yp)
  c(Yp=Yp,Ys=Ys,SI=SI)
}


