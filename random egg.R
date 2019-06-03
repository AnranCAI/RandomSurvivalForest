library(readr)
base_diabete_ml_sauf_sexe <- read_csv("base_diabete_ml_sauf_sexe.csv")
View(base_diabete_ml_sauf_sexe)

library(randomForestSRC)
diabetes = read.csv(file="base_diabete_ml_sauf_sexe.csv", sep = ';')
v.obj <- rfsrc(Surv(suivi_fin, diabete) ~ ., data = diabetes, split.depth = c(FALSE, "all.trees", "by.tree"),
               ntree = 100, block.size = 1, var.used="by.tree",splitrule="logrank")
vs.v <- var.select(object = v.obj,method="vh")




plot.survival(v.obj, subset = 1:5)


v.obj <- rfsrc(Surv(suivi_fin, diabete) ~ ., data = diabetes, 
               ntree = 500, nodesize = 5)


library()

diabetes[26,"diabete"]
names(diabetes)
test <- diabetes[,c(37, 54,61)]
