module MoneyManageable 

  def buy_drink
    if have_stock? && @slot_money >= pickup_drink[0][:price]
      puts "売上金:#{@sales_amount += pickup_drink[0][:price]}円"
      puts "残金:#{@slot_money -= pickup_drink[0][:price]}円"
      puts "🎁商品を購入しました🎁"
      reduce_stock
    else 
      puts "😢商品を購入できません😢" 
    end
  end

  def current_slot_money
    @slot_money
  end

end

