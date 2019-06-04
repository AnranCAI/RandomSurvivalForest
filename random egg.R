library(readr)
base_diabete_ml_sauf_sexe <- read_csv("base_diabete_ml_sauf_sexe.csv")
View(base_diabete_ml_sauf_sexe)

library(randomForestSRC)
diabetes = read.csv(file="base_diabete_ml_sauf_sexe.csv", sep = ';')

v.obj <- rfsrc(Surv(suivi_fin, diabete) ~ ., data = diabetes,bootstrap=c("by.root"),split.depth = "by.tree", ntree = 100, block.size = 1, var.used="by.tree",splitrule="logrank",importance = TRUE)

vs.v <- var.select(object = v.obj, method ="md")

plot(v.obj)

plot.survival(v.obj, subset = mean(1:1222),cens.model = "rfsrc")


library(rpart)

diabetes = read.csv(file="base_diabete_ml_sauf_sexe.csv", sep = ';')

rpart(formula, diabetes, weights,
      model = FALSE, x = FALSE, y = TRUE)
na.action = na.rpart, method,




library()

diabetes[26,"diabete"]
names(diabetes)
test <- diabetes[,c(37, 54,61)]
