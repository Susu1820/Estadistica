#_______ Tablas de frecuencia ________

# utilizamos la matriz iris
#_____________________________________
# Esploracion de la matriz
#_____________________________________
data(iris)
#_____________________________________

dim(iris)
# 150 individuos___________5 variables
#_____________________________________

colnames(iris)
# Flores______________________________

str(iris)
#_____________________________________

anyNA(iris)
#_____________________________________

# Generación de tablas no agrupadas___
#convertir matriz de datos a un data frame,
#se agrupan los valores para las variable Petal.Length
#y se calcula la frecuencia absoluta.

table_pl<-as.data.frame(table(iris$Petal.Length))

#visualización de la tabla de contingencia de
#Petal-Length y su respectiva frecuencia absoluta.

table_pl

#Creación de la tabla completa

tabla1<-transform(table_pl,
                  freqAc=cumsum(Freq),
                  Rel=round(prop.table(Freq),3),
                  RelAc=round(cumsum(prop.table(Freq)),3))

#Agrupar

tabla1_clases<-as.data.frame(table(Petal.Lenght=factor(cut(iris$Petal.Length,breaks = 8))))
                                                        
#Construcción de tabla completa__________

tabla2<-transform(tabla1_clases,
                  freqAc=cumsum(Freq),
                  Rel=round(prop.table(Freq),3),
                  RelAc=round(cumsum(prop.table(Freq)),3))





