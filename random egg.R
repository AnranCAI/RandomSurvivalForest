library(randomForestSRC)
diabetes = read.csv(file="base_diabete_ml_sauf_sexe.csv", sep = ';')
v.obj <- rfsrc(Surv(suivi_fin, diabete) ~ ., data = diabetes, 
               ntree = 100, block.size = 1)

plot.survival(v.obj, subset = 1:10)