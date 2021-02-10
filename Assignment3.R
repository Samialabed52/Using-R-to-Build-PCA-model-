weatherData <- read.csv("weather-data-set.csv", header=TRUE);
PCA <- princomp(na.omit(weatherData[-c(1,7,9:10,21,23)]), cor = TRUE); PCA
summary(PCA)
loadings(PCA)

newPCA <- PCA$loadings[,1:5]
newPCA
plot(newPCA)
