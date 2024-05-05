def stock_picker(arr)

    max_margin = 0
    tansaction_dates = [0,0]

    arr.each_with_index do | buy_value, buy_date |
        arr[buy_date..-1].each_with_index do | sell_value, sell_date |
            if sell_value - buy_value > max_margin
                max_margin = sell_value - buy_value
                tansaction_dates[0] = buy_date
                tansaction_dates[1] = sell_date + buy_date
            end
        end
    end

    tansaction_dates

end