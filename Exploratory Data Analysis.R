library(tidyverse)
library(dplyr)
library(ggplot2)


#import data
data <- read.csv("Data_Asia_Tenggara.csv")

data$X <- NULL
data$X.1 <- NULL
data$X.2 <- NULL

data <- data
data2 <- dplyr::slice(data,1:11)



str(data2)
glimpse(data2)
summary(data2)


ggplot(data2)+
  geom_bar(mapping = aes(x=Negara))

ggplot(data2)+
  geom_bar(mapping = aes(x=Kriteria_Pendapatan))

ggplot(data2)+
  geom_histogram(mapping = aes(x=Populasi))

ggplot(data2)+
  geom_histogram(mapping = aes(x=Penduduk_Perkotaan), binwidth = 5)

ggplot(data2)+
  geom_point(mapping = aes(x=Kriteria_Urbanisasi, y=Pendapatan_Perkapita))

data2 %>%
  count(Kriteria_Kemiskinan, Kriteria_Pembangunan) %>%
  ggplot(mapping = aes(x=Kriteria_Kemiskinan, y=Kriteria_Pembangunan))+
  geom_tile(mapping = aes(fill = n))


ggplot(data2)+
  geom_point(mapping = aes(x=Penduduk_Perkotaan, y=Kemiskinan))+
  ggtitle("Grafik Hubungan Kemiskinan dan Urbanisasi")

ggplot(data2, aes(Penduduk_Perkotaan, Kemiskinan))+
  geom_point(size=2))
