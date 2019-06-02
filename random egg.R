library(randomForestSRC)
data = read.csv(file="base_diabete_ml_sauf_sexe.csv", sep = ';')

rfsrc(data)