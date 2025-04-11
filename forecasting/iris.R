# ==============================================================================
# From the Iris dataset, the purpose is infer the category of iris from
# a list of values, we'll keep the nearest corresponding value.
# For example if the data contains
# 5.1,Iris-setosa
# 10.2,Iris-versicolor
# and we want to know for the length 7, it will correspond to Iris-setosa as
# abs(7-5.1) < abs(7-10.2)
# ==============================================================================

ref_sepal_length <- read.csv("./data/iris_lightweight.csv")
print(ref_sepal_length)

infer_iris <- function(ref_sepal_length, to_infer) {
  df <- data.frame(
    "sepal length (cm)"=numeric(),
    "target"=character(),
    stringsAsFactors=FALSE
  )
  for (item in to_infer) {
    for (val in item) {
      i <- which.min(abs(val-ref_sepal_length$sepal.length..cm))
      df[nrow(df) + 1,] <- list(val, ref_sepal_length[i,"target"])
    }
  }
  # df$target <- factor(df$target)
  return (df)
}


to_infer <- data.frame("sepal length (cm)" = c(4.1, 4.8, 6.6))
result_df <- infer_iris(ref_sepal_length, to_infer)
expected_inference <- data.frame(
    "sepal length (cm)" = c(4.1, 4.8, 6.6),
    "target" = c("Iris-setosa", "Iris-setosa", "Iris-virginica"),
    stringsAsFactors=TRUE
)

result_df

print(identical(result_df, expected_inference))
