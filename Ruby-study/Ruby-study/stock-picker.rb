def stock_picker(prices)
  best_days = [0, 1]
  best_profit = 0

  prices.each_with_index do |buy_price, buy_day|
    prices.each_with_index do |sell_price, sell_day|

      if sell_day > buy_day                    # must sell AFTER buying
        profit = sell_price - buy_price        # calculate profit
        if profit > best_profit                # is this better than our best?
          best_profit = profit                 # update best profit
          best_days = [buy_day, sell_day]      # update best days
        end
      end

    end
  end
  return "No profitable trade possible" if best_profit == 0

  best_days
end

puts stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10]).inspect
puts stock_picker([1, 2, 3, 4, 5]).inspect                  # => [0, 4]
puts stock_picker([5, 4, 3, 2, 1]).inspect                  # => prices only go down, what happens?
puts stock_picker([1]).inspect                               # => only one day
