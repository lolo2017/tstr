library(jsonlite)
library(httr)
library(xts)
library(clusterSim)

#####################
## 60 Min ##
#EURUSD
EURUSD <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^EURUSD&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(EURUSD$t, origin="1970-01-01")
EURUSD <- xts(data.frame(EURUSD)[,3:7], order.by = t)
#EURGBP
EURGBP <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^EURGBP&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(EURGBP$t, origin="1970-01-01")
EURGBP <- xts(data.frame(EURGBP)[,3:7], order.by = t)
#EURCHF
EURCHF <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^EURCHF&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(EURCHF$t, origin="1970-01-01")
EURCHF <- xts(data.frame(EURCHF)[,3:7], order.by = t)
#EURJPY
EURJPY <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^EURJPY&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(EURJPY$t, origin="1970-01-01")
EURJPY <- xts(data.frame(EURJPY)[,3:7], order.by = t)
#EURCAD
EURCAD <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^EURCAD&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(EURCAD$t, origin="1970-01-01")
EURCAD <- xts(data.frame(EURCAD)[,3:7], order.by = t)
#EURAUD
EURAUD <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^EURAUD&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(EURAUD$t, origin="1970-01-01")
EURAUD <- xts(data.frame(EURAUD)[,3:7], order.by = t)
#EURNZD
EURNZD <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^EURNZD&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(EURNZD$t, origin="1970-01-01")
EURNZD <- xts(data.frame(EURNZD)[,3:7], order.by = t)
###########################################
#USDJPY
USDJPY <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^USDJPY&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(USDJPY$t, origin="1970-01-01")
USDJPY <- xts(data.frame(USDJPY)[,3:7], order.by = t)
#USDCHF
USDCHF <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^USDCHF&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(USDCHF$t, origin="1970-01-01")
USDCHF <- xts(data.frame(USDCHF)[,3:7], order.by = t)
#USDCAD
USDCAD <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^USDCAD&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(USDCAD$t, origin="1970-01-01")
USDCAD <- xts(data.frame(USDCAD)[,3:7], order.by = t)
###############################################
#GBPUSD
GBPUSD <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^GBPUSD&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(GBPUSD$t, origin="1970-01-01")
GBPUSD <- xts(data.frame(GBPUSD)[,3:7], order.by = t)
#GBPJPY
GBPJPY <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^GBPJPY&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(GBPJPY$t, origin="1970-01-01")
GBPJPY <- xts(data.frame(GBPJPY)[,3:7], order.by = t)
#GBPCHF
GBPCHF <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^GBPCHF&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(GBPCHF$t, origin="1970-01-01")
GBPCHF <- xts(data.frame(GBPCHF)[,3:7], order.by = t)
#GBPCAD
GBPCAD <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^GBPCAD&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(GBPCAD$t, origin="1970-01-01")
GBPCAD <- xts(data.frame(GBPCAD)[,3:7], order.by = t)
#GBPAUD
GBPAUD <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^GBPAUD&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(GBPAUD$t, origin="1970-01-01")
GBPAUD <- xts(data.frame(GBPAUD)[,3:7], order.by = t)
#GBPNZD
GBPNZD <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^GBPNZD&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(GBPNZD$t, origin="1970-01-01")
GBPNZD <- xts(data.frame(GBPNZD)[,3:7], order.by = t)
############################################
#CHFJPY
CHFJPY <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^CHFJPY&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(CHFJPY$t, origin="1970-01-01")
CHFJPY <- xts(data.frame(CHFJPY)[,3:7], order.by = t)
################################################
#CADJPY
CADJPY <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^CADJPY&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(CADJPY$t, origin="1970-01-01")
CADJPY <- xts(data.frame(CADJPY)[,3:7], order.by = t)
#CADCHF
CADCHF <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^CADCHF&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(CADCHF$t, origin="1970-01-01")
CADCHF <- xts(data.frame(CADCHF)[,3:7], order.by = t)
##############################################
#AUDUSD
AUDUSD <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^AUDUSD&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(AUDUSD$t, origin="1970-01-01")
AUDUSD <- xts(data.frame(AUDUSD)[,3:7], order.by = t)
#AUDCHF
AUDCHF <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^AUDCHF&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(AUDCHF$t, origin="1970-01-01")
AUDCHF <- xts(data.frame(AUDCHF)[,3:7], order.by = t)
#AUDJPY
AUDJPY <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^AUDJPY&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(AUDJPY$t, origin="1970-01-01")
AUDJPY <- xts(data.frame(AUDJPY)[,3:7], order.by = t)
#AUDCAD
AUDCAD <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^AUDCAD&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(AUDCAD$t, origin="1970-01-01")
AUDCAD <- xts(data.frame(AUDCAD)[,3:7], order.by = t)
#AUDNZD
AUDNZD <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^AUDNZD&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(AUDNZD$t, origin="1970-01-01")
AUDNZD <- xts(data.frame(AUDNZD)[,3:7], order.by = t)
##############################################
#NZDUSD
NZDUSD <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^NZDUSD&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(NZDUSD$t, origin="1970-01-01")
NZDUSD <- xts(data.frame(NZDUSD)[,3:7], order.by = t)
#NZDCHF
NZDCHF <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^NZDCHF&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(NZDCHF$t, origin="1970-01-01")
NZDCHF <- xts(data.frame(NZDCHF)[,3:7], order.by = t)
#NZDJPY
NZDJPY <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^NZDJPY&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(NZDJPY$t, origin="1970-01-01")
NZDJPY <- xts(data.frame(NZDJPY)[,3:7], order.by = t)
#NZDCAD
NZDCAD <- fromJSON("http://www.barchartmarketdata.com/tradingview/proxy.php?module=charts&popup=1&requestType=history&symbol=^NZDCAD&resolution=60&from=1483228800&to=as.numeric(Sys.time())")
t <- as.POSIXct(NZDCAD$t, origin="1970-01-01")
NZDCAD <- xts(data.frame(NZDCAD)[,3:7], order.by = t)

################################################
#USD Index
XUSD <- ((1/EURUSD) * (1/GBPUSD) * USDCHF * (USDJPY/100) * USDCAD * (1/AUDUSD)* (1/NZDUSD))^(1/7)
#EUR Index
XEUR <- (EURUSD * EURGBP * EURCHF * (EURJPY/100) * EURCAD * EURAUD * EURNZD)^(1/7)
#GBP Index
XGBP <- ((1/EURGBP) * GBPUSD * GBPCHF * (GBPJPY/100) * GBPCAD * GBPAUD * GBPNZD)^(1/7)
#CHF Index
XCHF <- ((1/EURCHF) * (1/USDCHF) * (1/GBPCHF) * (CHFJPY/100) * (1/CADCHF) * (1/AUDCHF) * (1/NZDCHF))^(1/7)
#CAD Index
XCAD <- ((1/EURCAD) * (1/USDCAD) * CADCHF * (CADJPY/100) * (1/GBPCAD) * (1/AUDCAD) * (1/NZDCAD))^(1/7)
#AUD Index
XAUD <- ((1/EURAUD) * AUDUSD * AUDCHF * (AUDJPY/100) * AUDCAD * (1/GBPAUD) * AUDNZD)^(1/7)
#NZD Index
XNZD <- ((1/EURNZD) * NZDUSD * NZDCHF * (NZDJPY/100) * NZDCAD * (1/AUDNZD) * (1/GBPNZD))^(1/7)
#JPY Index
XJPY <- ((1/EURJPY) * (1/USDJPY) * (1/CHFJPY) * (1/GBPJPY) * (1/CADJPY) * (1/AUDJPY) * (1/NZDJPY))^(1/7)
###########################################
XUSD <- round(data.Normalization(XUSD$c, type = "n5", normalization = "column"), digits = 4)
XEUR <- round(data.Normalization(XEUR$c, type = "n5", normalization = "column"), digits = 4)
XGBP <- round(data.Normalization(XGBP$c, type = "n5", normalization = "column"), digits = 4)
XCHF <- round(data.Normalization(XCHF$c, type = "n5", normalization = "column"), digits = 4)
XJPY <- round(data.Normalization(XJPY$c, type = "n5", normalization = "column"), digits = 4)
XCAD <- round(data.Normalization(XCAD$c, type = "n5", normalization = "column"), digits = 4)
XAUD <- round(data.Normalization(XAUD$c, type = "n5", normalization = "column"), digits = 4)
XNZD <- round(data.Normalization(XNZD$c, type = "n5", normalization = "column"), digits = 4)

###########################################
X <- XUSD$c
X$USD <- XUSD
X$EUR <- XEUR
X$GBP <- XGBP
X$CHF <- XCHF
X$JPY <- XJPY
X$CAD <- XCAD
X$AUD <- XAUD
X$NZD <- XNZD
X$c <- NULL
tail(X)

##############################################
#Special data.frame to work with ramcharts & plotly
XWK <- subset(X, index(X) >="2017-02-01 00:00:00")
XWK<- cbind(Time= as.POSIXct(index(XWK)), as.data.frame.matrix(XWK))
#################################################
library(rAmCharts)
amTimeSeries(XWK, "Time", c('USD', 'EUR','GBP','CHF','JPY','CAD','AUD','NZD'),main = "Index H1 ",linetype = 0, connect=TRUE )
#############################################
################################################
library(plotly)
plot_ly(XWK, x = ~Time, y = ~USD, name = 'USD', type = 'scatter', mode = 'lines') %>%
  add_trace(y = ~EUR, name = 'EUR', mode = 'lines')%>%
  add_trace(y = ~GBP, name = 'GBP', mode = 'lines')%>%
  add_trace(y = ~CHF, name = 'CHF', mode = 'lines')%>%
  add_trace(y = ~JPY, name = 'JPY', mode = 'lines')%>%
  add_trace(y = ~CAD, name = 'CAD', mode = 'lines')%>%
  add_trace(y = ~AUD, name = 'AUD', mode = 'lines')%>%
  add_trace(y = ~NZD, name = 'NZD', mode = 'lines')%>%
  layout(xaxis = list(type = "category"), margin=list(b = 100))
