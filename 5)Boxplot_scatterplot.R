df <- data.frame(
  age = c(23, 23, 27, 27, 39, 41, 47, 49, 50, 52, 54, 54, 56, 57, 58, 58, 60, 61),
  percent_fat = c(9.5, 26.5, 7.8, 17.8, 31.4, 25.9, 27.4, 27.2, 31.2, 34.6, 42.5, 28.8, 33.4, 30.2, 34.1, 32.9, 41.2, 35.7)
)

print(df)

model <- lm(percent_fat ~ age, data = df)

summary(model)

plot(df$age, df$percent_fat, xlab = "Age", ylab = "Percent Fat")
abline(model, col = "red")

title("Relationship between Age and Percent Body Fat")

cat("Regression Equation: percent_fat =", round(coef(model)[1], 2), "+", round(coef(model)[2], 2), "* age")