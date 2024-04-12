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
  return (df)
}


to_infer <- data.frame("sepal length (cm)" = c(4.1, 4.8, 6.6))
result_df <- infer_iris(ref_sepal_length, to_infer)
expected_inference <- data.frame(
    "sepal length (cm)" = c(4.1, 4.8, 6.6),
    "target" = c("Iris-setosa", "Iris-setosa", "Iris-virginica")
)

result_df

print(identical(result_df, expected_inference))
