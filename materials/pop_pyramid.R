pop_pyramid <- function(data, country, year){
  
  # Select the data for the given year and country
  
  df <- data[data$Country == country & data$Year == year, ]
  
  m <- df[df$Sex == "M", ]
  f <- df[df$Sex == "F", ]
  
  # make population pyramid
  
  # set plot parameters to put both barplots into one plot
  
  options(scipen = 999)
  
  par(mar=c(0.5, 2.8, 2, 0.2), 
      mfrow=c(1,2),
      oma = c(4, 4, 0.2 , 0.2))
  
  # barplot for the number of males, orientation mirrored. This is achieved
  # by multiplying the input data by -1. We delete the x and y axis and overwrite
  # the x axis 
  
  barplot((-1)*m$POP, 
          names.arg = levels(dat$Age), 
          horiz = T, 
          las = 1,
          cex.names = 0.7,
          col = "blue", 
          yaxt = 'n', 
          xaxt = 'n',
          main = "Males")
  
  bound <- ifelse(max(m$POP) > max(f$POP), max(m$POP), max(f$POP))
  
  
  range_m <- pretty(seq(0, (-1)*bound, length.out = 5))
  range_f <- pretty(seq(0, bound, length.out = 5))
  
  axis(1, at = range_m, labels = as.character((-1)*range_m),  cex.axis = 0.7,)
  
  
  
  barplot(f$POP, 
          names.arg = levels(dat$Age), 
          horiz = T, 
          las = 1,
          cex.names = 0.5,
          col = "red",
          xaxt = 'n',
          main = "Females")
  
  axis(1, at = range_f, labels = as.character(range_f), cex.axis = 0.7)
  
}