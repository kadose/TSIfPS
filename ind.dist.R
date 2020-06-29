#' Estimation of Distance Matrix
#' @description {This function estimated the Distance Matrix by dist  function from stats packages.}
#' @param {df1} {{df1: a data frame which obtained from indices function}}
#' @param ...
#'
#' @details {The Arguments of this function is all of the dist function, except of df1 that is fixed an obtained from indices function.}
#' @return {Distance Matrix}
#' @export
#' @author {Peyman Sharifi}
#'
#' @examples {ind.dist (df1)}
ind.dist <-
function (df1,...){
   dh <<- dist(df1,...)
   round ((dh), 2)
    }
