#Grafico de barras horizontal para concentracion de ozono en el aire

help("airquality")

barplot(airquality$Ozone,
        main = 'Ozone Concentration in air',
        xlab = 'ozone levels', 
        horiz = TRUE)

airquality

#Vertical Bar Plot

barplot(airquality$Ozone,
        main = 'Ozone Concentration in air',
        xlab = 'ozone levels', 
        horiz = FALSE)

barplot(airquality$Ozone,
        main = 'Ozone Concentration in air',
        xlab = 'ozone levels', 
        col = 'yellow',
        horiz = FALSE)

hist(airquality$Temp, 
     main = 'La Guardia Airport Max Temperature (Daily)',
     xlab = 'Temp (F)',
     xlim = c(50, 125),
     col = "red",
     freq = TRUE
     )

boxplot(airquality$Wind,
  main = 'Average Wind Speed at La Guardia Airport',
  xlab = 'Miles per hour',
  ylab = 'Wind',
  col = 'orange',
  border = 'brown',
  horizontal = TRUE,
  notch = TRUE
    )

#Diagrama de caja (Vertical)

boxplot(airquality[, 0:4],
        main = 'Box Plot for Air Quality Parameters')

#Diagrama de Dispersion

plot(airquality$Ozone,
     airquality$Month,
     main = "Scatter Plot Example",
     xlab = 'Ozone concentration in part per billion',
     ylab = 'Month of observation', pch = 19
     )

#Mapas de Calor

set.seed(110)

data = matrix(rnorm(50, 0, 5), nrow = 5, ncol = 5)

colnames(data) = paste0("col", 1:5)
rownames(data) = paste0("row", 1:5)

heatmap(data)
data

#Grafico de Pie

slices = c(10, 12, 4, 16, 8)
lbls = c("US","UK","Australia","Germany","France")

pie(slices,
    labels = lbls,
    main = 'Pie Chart of Countries')

#Grafico en 3 dimensiones 



cone <- function(x,y) {
  sqrt(x ^ 2 + y ^ 2)
}

x = y = seq(-1, 1, length = 30)
z = outer(x, y, cone)

persp(x, y, z,
      main = 'Perspective Plot of a Cone',
      zlab = 'Height',
      theta = 30,
      phi = 15, 
      col = 'orange',
      shade = 0.4)




install.packages("maps", dep = T)

library(maps)


map(database = "world")

points(x = world.cities$lat[1:500],
       y = world.cities$lng[1:500],
       col = 'blue')

#Mapas poligonales





























