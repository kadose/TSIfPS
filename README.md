# TSIfPS
Tolerance and susceptibility indices for plant stress
I add a modified file
Package ‘TSIfPS (Tolerance and susceptibility indices for plant stresses)
This package attempt to evaluate some of the indices of tolerance and sensitivity to abiotic stress and identify the most tolerant and susceptible genotypes based on different graphs. The users can used The Plant Abiotic Stress Index Calculator (iPASTIC) is an online program based on JavaScript and R that calculates stress tolerance and susceptibility indices (Pour-Aboughadareh et al., 2019). Since in multivariate methods, adding or subtracting one or more variables affects the results of analyzes such as principal component analysis and cluster analysis, the new point or the novelty of this package is to use more indices that influence stress assessment with multivariate methods, and differed the results of this package with iPASTIC. 

In the first step: 
# COMMENT: USER NEEDS TO REPLACE DATA or import it from CSV or TXT files
ricedrt <- read.csv (file="F:/testR/education/ricedrt.csv", sep = ";", header = TRUE)
head(data,3)
tail(data,3)
summary(data)
# The functions including:
avr.si(data,x,y)
 yp.ysplot.genname (data,x,y)
  yp.ysplot(data,x,y)
 indices(data,x,y)
 corind (df1)
 pca.stress(df1)
 ind.biplot (df1)
 ind.dist (df1)
 ind.clust (dh, "ward")

avr.si	Estimating average of response variable in stress and non-stress conditions and stress index
Description
This function estimated average of response variable in stress and non-stress conditions and stress index.
yp.ysplot(data,x,y)	Plotting two dimensional graph based on yp ad ys	With genotype number
yp.ysplot.genname (data,x,y)		With genotype name
Description
This functions plotted a two dimensional graph based on yp ad ys with genotype number or name. As a result, users can assign the genotypes to groups A, B, C, and D, as described by Fernandez (1992). According to Fernandez (1992) report, genotypes can be classified into four groups based on their performance in stressed and non-stressed conditions: group A: genotypes with high yield under both stressed and non-stressed conditions, group B: genotypes with high yield under non-stressed conditions, group C: genotypes with high yield under stressed conditions, group D: genotypes with poor performance under both stressed and non-stressed conditions. A suitable index must be able to distinguish group A from the other groups.
indices	Estimation common stress tolerance and susceptibility
indices
Description
This function estimated some of stress tolerance and susceptibility indices. This function is the main function of presented packages, using the mentioned formula calculated the indices and put the indices in a data frame (df1) to use in the other functions.
Index	Desirable genotypes with	Equation	References
Yield Efficiency Index (YEI)	High value of this index	 
Fageria, 1991
Tolerance Index (TOL)	Low value of this index	 
Rosielle and Hamblin, 1981
Stress Susceptibility Index (SSI)	Low value of this index	 
Fischer and Maurer, 1978
Mean Productivity (MP)	High value of this index	 
Rosielle and Hambline, 1981
Geometric Mean Productivity (GMP)	High value of this index	 
Fernandez, 1992
Stress Tolerance Index (STI)	High STI values will be tolerant to stress	 
Fernandez, 1992
Yield Index (YI)	High value of this index	 
Gavuzzi et al., 1997
Yield Stability Index (YSI)	High value of this index	 
Bouslama and Schapaugh, 1984
Harmonic Mean (HM)	High value of this index	 
Fernandez, 1992
Relative drought index (RDI)	RDI>1, the genotype is relatively drought tolerant	 
Fischer and Wood, 1979
Drought Index (DI)	High value of this index	 
Lan, 1998
Yield Reduction (YR)	Low value of this index	 
Fageria, 1985
Abiotic Tolerance  Index (ATI)	Low value of this index	 
Moosavi et al., 2008
Stress Susceptibility Percentage Index (SSPI)	Low value of this index	 
Moosavi et al., 2008
Stress Non-Stress Production Index (SNPI)	High value of this index will be suitable for drought stress  condition	 
Moosavi et al., 2008

corind	Estimation correlation coefficients and plotting the heatmap for correlation matrixes
Description
This function estimated the correlation coefficients and presented in a matrix and ggcorrplot. It is need to install and running ggcorrplot packages. This function was also used cor function from stats packages.
install.packages("ggcorrplot")
library("ggcorrplot")
install.packages ("ggplot2")
 library(ggplot2)
pca.stress	Estimation of first three principal components and plotting a scree plot. 
Description
This function estimated the first three principal components and plotting a screeplot. This function used percomp function from stats packages and plot function from graphics packages.
ind.biplot	Plotting a graph based on first two principal components 
Description
This function plotted a biplot according to fist PCAs. This function used biplot function from stats packages.
ind.dist	Estimation of Distance Matrix 
Description
This function estimated the Distance Matrix by dist function from stats packages. 
Details
The Arguments of this function is all of the dist function, except of df1 that is fixed an obtained from indices function.
ind.clust	Plotting a cluster diagram 
Description
This function estimated used the Distance Matrix from previous stage and Plotted a cluster diagram by hclust  function from stats packages. 
Details
The Arguments of this function is all of the hclust function, except of df1 that is fixed an obtained from indices function.

For plotting a three dimensional plot, we establish a data frame containing yp,ys and any of indices (df2) and then use this data frame to plotting a three dimensional plot by scatterplot3d function from scatterplot3d packages and then added the genotype number or name:
install.packages("scatterplot3d")
> library(scatterplot3d)
> df2 <- data.frame (yp,ys,HM)
> s3d <- scatterplot3d (df2, type="h", highlight.3d=TRUE,
+                      angle=55, scale.y=0.7, pch=16, main="scatterplot3d - 5")
> text(s3d$xyz.convert(df2[, 2:4]), labels = rownames(df2), pos=4,
+       cex= 0.7, col = "blue")# add genotype number
>  text(s3d$xyz.convert(df2[, 2:4]), labels = data [,1], pos=4,
+       cex= 0.7, col = "blue") # add genotype name
And finally, save the indices data frame as:
write.table(df1, "F:/testR/Education/df5.txt", sep = " ",
+              row.names = FALSE,col.names = TRUE)
Nedd to use of write.table function from utils packages.
References
Fernandez, G. C. J. 1992. Effective selection criteria for assessing plant stress tolerance. In proceeding of a Symposium, Taiwan, 13-18 Aug. pp. 257-270.
Moosavi SS, Yazdi SB, Naghavi MR, Zali AA, Dashti H and Pourshahbazi A (2008) Introduction of new indices to identify relative drought tolerance and resistance in wheat genotypes. Desert 12: 165-178. 
Lan J (1998) Comparison of evaluating methods for agronomic drought resistance in crops. Acta Agriculture Bor-occid Sinic 7: 85-87. 
Fageria NK (1985) Influence of aluminum in nutrient solutions on chemical composition in two rice cultivars at different growth stages. Plant and Soil 85: 423-429. 
Pour-Aboughadareh A, Yousefian M, Moradkhani H, Moghaddam Vahed M, Poczai P and Siddique KHM (2019) iPASTIC: An online toolkit to estimate plant abiotic stress indices. Applications in Plant Sciences 7(7): 1-6.

 
