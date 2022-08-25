library(ggplot2)

demo_data <- read.csv("~/R/Statistics_JWL/data/extreme_poverty/share-of-population-in-extreme-poverty.csv")

names(demo_data) <- c("Country", "Code", "Year", "Share")

pl_dat <- with(demo_data, demo_data[Country %in% c("World", "China") & Year >= 2000, ])

p <- ggplot(pl_dat, aes(x = Year, y = Share, color = Country)) +
     geom_point() +
     geom_line() +
     xlab("")

p
