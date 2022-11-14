require_relative 'VendingMachine'

VM = VendingMachine.new

puts "💰お金を入れてください💰"
VM.slot_money

puts "💴投入金額は下記です💴"
slot_money = VM.current_slot_money
puts "#{slot_money}円"

puts "🧋在庫は下記です🧋"
VM.show_buyable_list

puts "👇商品を選んでください👇"
VM.select_and_buy_drink

puts "💸お釣りは下記です💸"
VM.return_money
puts "😉ありがとうございました😉"