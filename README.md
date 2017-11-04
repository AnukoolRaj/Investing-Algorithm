# Investing-Algorithm

This is the implementation of a trading algorithm which says that you can invest in a firm if the stock price surpasses the expected stock prices
predicted on the basis of previous 4 years historical data.
It is more of a manual work than coding. Download the .csv files of the historical data of whichever company you want to check for from finance.yahoo.com
Here just for an example Airtel has been used. Prediction has been made for 2016 just for illustration. 
See the predicted mean, upper and lower values and use these vaules as indicator. If the cirrent stock price is above the mean, you are safe to invest.
If it is below the mean, you can go short then.
You can also look it this way,
If the stock price is hovering around or above the expected high, check the firm's fundamentals. If there is nothing good that has happened with firm
it simply means that the price has rised above its expected value due to bull traps and it will fall down eventually to its mean value. So, its safe to go short.
You can apply similar logic if the price is around or below the predicted lows.
