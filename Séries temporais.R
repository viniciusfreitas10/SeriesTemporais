library(forecast)

AirPassengers
start(AirPassengers)
end(AirPassengers)
frequency(AirPassengers)

plot(AirPassengers)
plot(aggregate(AirPassengers))

subs = window(AirPassengers, start=c(1960, 1), end = c(1960,12))
plot(subs)

dec = decompose(AirPassengers)
plot(dec$seasonal)
plot(dec$random)
plot(dec)

attributes(dec)

#previsao com ETS
ets = ets(AirPassengers)
previsao = forecast(ets, h=12)
plot(previsao)
previsao

#arima

arima = auto.arima(AirPassengers)
arima
previsao = forecast(arima, h=12)
plot(previsao)

