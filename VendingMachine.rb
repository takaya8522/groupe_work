require_relative 'stock'
require_relative 'money'

class VendingMachine
  include StockManageable
  include MoneyManageable

  MONEY = ["10", "50", "100", "500", "1000"].freeze

  def initialize
    @slot_money = 0
    @drink_stocks = StockManageable.add_drink_stocks
    @sales_amount = 0
    @selected_drink_num = nil
  end

  def slot_money #力を入れたポイント
    while true
      puts "10円玉、50円玉、100円玉、500円玉、1000円札を1つずつ投入できます。"
      money = gets.chomp
      if MONEY.include?(money)
        @slot_money += money.to_i
        puts "入力を終えるのであれば、e を入力していください、続けるのであれば、e 以外を入力してください。"
        input = gets.chomp
        break if input == 'e'
      else
        puts "釣り銭は#{money.chomp}です。対応していません。"
      end
    end
  end

  def select_and_buy_drink
    while true
      select_drink
      buy_drink
      puts "購入を終了したい場合はeを入力してください。"
      input = gets.chomp
      break if input == 'e'
    end
  end

  def return_money  
    puts "釣り銭：#{@slot_money}円"
    @slot_money = 0
  end
end




