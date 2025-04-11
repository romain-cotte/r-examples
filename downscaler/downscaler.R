
library(downscaleR)

# data("VALUE_Iberia_tas") # illustrative datasets included in transformeR
# y <- VALUE_Iberia_tas

data("NCEP_Iberia_hus850", "NCEP_Iberia_psl", "NCEP_Iberia_ta850")
x <- makeMultiGrid(NCEP_Iberia_hus850, NCEP_Iberia_psl, NCEP_Iberia_ta850)

# calculating predictors
data <- prepareData(x = x, y = y, spatial.predictors = list(v.exp = 0.95))

# Fitting statistical downscaling methods (simple case, no cross-validation)
analog <- downscale.train(data, method = "analogs", n.analogs = 1)
regression <- downscale.train(data, method = "GLM", family = gaussian)
neuralnet <- downscale.train(data, method = "NN", hidden = c(10,5), output = "linear")

# Extracting the results for a particula station (Igueldo) for a single year (2000)
igueldo.2000 <- subsetGrid(y, station.id = "000234", years = 2000)
analog.2000 <- subsetGrid(analog$pred, station.id = "000234", years = 2000)
regression.2000 <- subsetGrid(regression$pred, station.id = "000234", years = 2000)
neuralnet.2000 <- subsetGrid(neuralnet$pred, station.id = "000234", years = 2000)

# Data visualization utilities
library(visualizeR)
temporalPlot(igueldo.2000, analog.2000, regression.2000, neuralnet.2000)
