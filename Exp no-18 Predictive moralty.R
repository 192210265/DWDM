library(datasets)
data("water")
str(water)
plot(water$hardness, water$mortality,
     xlab = "Hardness", ylab = "Mortality",
     main = "Scatter Plot of Mortality vs. Hardness")
linear_model <- lm(mortality ~ hardness, data = water)
summary(linear_model)
new_data <- data.frame(hardness = 88)
predicted_mortality <- predict(linear_model, newdata = new_data)
cat("Predicted Mortality for Hardness = 88:", predicted_mortality, "\n")