library(forecast)
library(tseries)
library(xts)
s <- read.csv('BHARTIARTL.NS.csv')
t <- ts(rev(s[,5]),start=c(2012,1),freq=12)
plot.ts(t)

airtel = data.frame(closing=t,lclosing=log(t))
save(airtel,file="airtel.RData")
load("airtel.RData")

airtel.stl = stl(airtel$closing,s.window = "periodic")
plot(airtel.stl,main="airtel stock decomposition")

airtel.f <- forecast(airtel.stl,method="arima",h=12,level=95)
plot(airtel.f,ylab="stock price",xlab="year",sub="forecast for the year 2016")

print(airtel.f$upper)
print(airtel.f$mean)
print(airtel.f$lower)
