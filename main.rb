stock_prices = [9,3,6,1,17,8,9,5,18]

def stock_picker(array)
  best_buy = 0
  best_sell = 0
  max_profit = 0

  array[0..-2].each_with_index do |buy, i|
    array[i + 1..-1].each_with_index do |sell, j|
      if sell - buy > max_profit
      #  puts "j = #{j}"
        best_sell = j + (i + 1)
      #  puts "j + (i + 1) = #{best_sell}"
        best_buy = i
        max_profit = sell - buy
      end  
    end
  end

  [best_buy, best_sell]
end

p stock_picker(stock_prices)