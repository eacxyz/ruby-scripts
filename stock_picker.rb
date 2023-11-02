# frozen_string_literal: true

def stock_picker(prices)
  min_index = 0
  max_index = 0

  max_profit = 0
  prices.each_with_index do |price, index|
    for i in index + 1...prices.length
      next unless prices[i] - price > max_profit

      max_profit = prices[i] - price
      min_index = index
      max_index = i
    end
  end

  [min_index, max_index]
end

p "expect: 0, 4 => #{stock_picker([1, 2, 3, 4, 5])}"
p "expect: 2, 3 => #{stock_picker([2, 3, 1, 5, 4])}"
p "expect: 2, 4 => #{stock_picker([5, 3, 1, 2, 4])}"
p "expect: 1, 2 => #{stock_picker([3, 2, 7, 5, 1])}"
p "expect: 1, 4 => #{stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])}"
p "expect: 0, 1 => #{stock_picker([4, 17, 3, 6, 7, 15, 8, 1, 10])}"
p "expect: 1, 2 => #{stock_picker([4, 2, 17, 3, 6, 9, 15, 8, 6, 1, 10])}"
p "expect: 2, 4 => #{stock_picker([3, 5, 1, 12, 19, 2, 17])}"
