kmeans1<-function()
{

library(ggplot2)
learning <-sample(1:100,30)
previleges <-sample (1:200,30)

kmeans_data <- data.frame(learning,previleges)
print(kmeans_data)
sskm<-kmeans_data[c(1:30),]
km<-kmeans(sskm,3,nstart=20)

gg<-ggplot(sskm)+
  geom_point(aes(x=learning,y=previleges,color =factor(km$cluster),size=5))+
  scale_color_manual( values=c("red", "blue", "green"))

print(gg)
print(km)
}

kmeans1();








