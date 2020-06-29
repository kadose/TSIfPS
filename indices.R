#' Estimation common stress tolerance and susceptibility indices
#'
#' @param data {A data frame including genotype name (Gen), yp and ys}
#' @param x {Response variable in non-stress condition (yp)}
#' @param y {ys: Response variable in stress condition (ys)}
#' @description {This function estimated the common stress tolerance and susceptibility indices.}
#'
#' @return {YEI }{Yield Efficiency Index}
#' @return {TOL }{Tolerance Index}
#' @return {SSI }{Stress Susceptibility Index}
#' @return {MP }{Mean Productivity}
#' @return {GMP }{Geometric Mean Productivity}
#' @return {STI }{Stress Tolerance Index}
#' @return {YI }{Yield Index}
#' @return {YSI }{Yield Stability Index}
#' @return {HM }{Harmonic Mean}
#' @return {RDI }{relative drought index}
#' @return {DI }{Drought Resistance Index}
#' @return {YR }{Yield Reduction}
#' @return {ATI }{Abiotic Tolerance  Index}
#' @return {SSPI }{Stress Susceptibility Percentage Index}
#' @return {SNPI }{Stress Non-Stress Production Index}
#' @export
#' @author {Peyman Sharifi}
#' @details {This function is the main function of presented packages, using the mentioned formula calculated the indices and put the indices in a data frame (df1) to use in the other functions.}
#'
#' @references {Fernandez, G.C.J. 1992. Effective selection criteria for assessing plant stress tolerance. In proceeding of a Symposium, Taiwan, 13-18 Aug. pp.}
#' @references {Bouslama, M., and Schapaugh, W. T. 1984. Stress tolerance in soybean. Part I: Evaluation of three screening techniques for heat and drought tolerance. Crop Science 24: 933-937.}
#' @references {Gavuzzi, P., Rizza, F., Palumbo, M., Campaline, R.G., Ricciardi, G.L., and Brghi, B. 1997. Evaluation of field and laboratory of drought and heat stress in winter cereals. Canadian Journal of Plant Science 77(4): 523-531.}
#' @references {Moosavi SS, Yazdi Samadi B, Naghavi MR, Zali AA, Dashtid H, Pourshahbazi A (2008). Introduction of new indices to identify relative drought tolerance and resistance in wheat genotypes. Desert 12:165-178.}
#' @references {Rosielle, A., and Hamblin, J. 1981. Theoretical aspects of selection for yield in stress and non-stress environment. Crop Science 21: 943-946.}
#'
#' @examples {data (ricedrt)
#' {indices (ricedrt,x,y)}}
indices <-
function (data,x,y){
  x <<- data [,2]
  y <<- data [,3]
  yp <<- x
  ys <<- y
  YEI <<- ((yp/Yp)*(ys/Ys))
  TOL <<- yp-ys #calculate Tolerance Index#
  SSI <<- (1 - (ys/yp))/SI # calculate Stress Susceptibility Index#
  MP <<- (yp+ys)/2 # calculate Mean Productivity#
  GMP <<- sqrt (yp*ys) # calculate Geomeic Mean#
  STI <<- (yp*ys)/(Yp^2) # calculate Stress Tolerance Index#
  YI <<- (ys/Ys)  # calculate Yield Index#
  YSI <<- ys/yp # calculate Yield Stability Index#
  HM <<- (2*yp*ys)/(yp+ys) # calculate harmonic Mean#
  RDI <<- (ys/yp)/(Ys/Yp) # calculate relative drought index#
  DI <<- (ys^2/yp)/Ys #drought index#
  YR <<- 1-(ys/yp) #yield reduction#
  RYC <<- {(yp-ys)/yp}*100 #yield reduction#
  #new indices#
  ATI <<- {{yp-ys}/{Yp-Ys}}*{sqrt (yp*ys)}# calculate Abiotic Tolerance Index#
  SSPI <<- {{yp-ys}/{2*Yp}}*100# calculate Stress Susceptibility Percentage Index#
  SNPI <<- {((yp+ys)/(yp-ys))^(0.33)}*{(yp*(ys)^2)^0.33}# calculate Stress Non-stress Production Index#
  df1 <<- data.frame(yp, ys, YEI, TOL, SSI, MP, GMP, STI, YI, YSI, HM, RDI, DI,
                    YR, ATI, SSPI, SNPI) #author can used any of idices that used#
  round (print (df1), 3)
      }
