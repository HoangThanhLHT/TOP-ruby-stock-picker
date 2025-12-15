def stock_picker(stocks)
  result = []
  max_profit = 0
  stocks[0..-2].each_with_index do |buy_price, buy_day|
    stocks[buy_day..-1].each_with_index do |sell_price, days_after|
      profit = sell_price - buy_price
      if profit > max_profit
        result = [buy_day, buy_day + days_after]
        max_profit = profit
      end
    end
  end
  result
end

p stock_picker([17,3,6,9,15,8,6,1,10])