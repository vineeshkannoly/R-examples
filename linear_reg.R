

install.packages("ggplot2")

linear_reg <-function()
{
  library(ggplot2)
hieght <- c(160,165,170,175,180,185,190,195,200)

weight<-c(50,66,72,78,80,85,88,95,96)

df_hw<-data.frame(hieght,weight)
plot(df_hw)

relation <-lm(hieght~weight)

summary(relation)

a<-data.frame(weight = 59)

lin_result <-  predict(relation,a)


print(lin_result)
plot(lin_result)

}



linear_reg();
