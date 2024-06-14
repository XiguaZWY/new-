library(MLmetrics) 
r11 <- readRDS("E:\\pred+observe.rds")
##内部你和效果

r11<- r11 %>%  #Guangzhou
  filter(cname %in% "xx",time >= as.Date("2019-04-14"))  
##把下面的r11全部替换成城市名，每一个城市跑一遍下面的代码得出RMSE 、MAPE、决定系数R2

#全部y_true都为r11$observed，y_pred=r11$median，自行更改
#pre-period RMSE 越小越好
d1<-RMSE(y_true=r11$observed, y_pred=r11$low5)  
d1  #613

#pre-period MAPE 优秀：<10%, 还行：10-30%
d2<-MAPE(y_true=r11$observed, y_pred=r11$low5)     #
d2*100