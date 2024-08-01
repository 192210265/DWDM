library(datasets)
data("AirPassengers")
passenger_counts <- as.numeric(AirPassengers)
start_value <- 100
end_value <- 700
bin_width <- 150
hist(passenger_counts, 
     breaks = seq(start_value, end_value, by = bin_width),
     xlab = "Passenger Count", 
     ylab = "Frequency",
     main = "Histogram of AirPassengers",
     col = "skyblue", 
     border = "black")