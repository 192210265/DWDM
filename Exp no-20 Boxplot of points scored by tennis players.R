points_scored <- c(10, 15, 20, 25, 30, 40, 50, 60, 70, 80, 100, 120, 150)
boxplot(points_scored,
        main = "Boxplot of Points Scored by Tennis Players",
        ylab = "Points Scored",
        col = "lightgreen",
        border = "black")
title(main = "Boxplot of Points Scored by Tennis Players",
      xlab = "Tennis Players",
      ylab = "Points Scored")