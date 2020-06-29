library(CausalImpact)
df<-read.csv('time_series_forecast.csv')




pre.period <- as.Date(c('2018-05-01', '2019-10-01'))
post.period <- as.Date(c('2019-11-01', '2020-04-01'))


impact <- CausalImpact(df['hires'], pre.period, post.period)
plot(impact)

