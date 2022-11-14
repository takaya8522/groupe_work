module StockManageable

  def self.add_drink_stocks #selfに変更、メソッド名追加
    drink_stocks = [], [], [], []
    5.times{ drink_stocks[0] << { name: "cola", price: 120 }}
    5.times{ drink_stocks[1] << { name: "redbull", price: 200 }}
    5.times{ drink_stocks[2] << { name: "water", price: 100 }}
    drink_stocks 
  end

  def show_buyable_list
    @drink_stocks.each do |stock|
      if stock != [] && @slot_money >= stock[0][:price]
        puts "#{stock[0][:name]}が購入できます。"
      end
    end
  end

  def select_drink
    drink_num = ['1', '2', '3', '4']
    while true
      puts "cola(120円)の場合は1, redbull(200円)の場合は2, water(100円)の場合は3, 払い戻しする場合は4を入力してください。"
      selected_drink_num = gets.chomp
      if drink_num.include?(selected_drink_num)
        return @selected_drink_num = selected_drink_num.to_i
      else
        puts "#{selected_drink_num}は対応していません。"
      end
    end
  end

  def reduce_stock 
    pickup_drink.shift
  end

  def have_stock?
    if pickup_drink.any?
      true
    else
      false
    end
  end

  def pickup_drink
    case @selected_drink_num
    when 1
      @drink_stocks[0]
    when 2
      @drink_stocks[1]
    when 3
      @drink_stocks[2]
    when 4
      @drink_stocks[3]
    end
  end
  
end
