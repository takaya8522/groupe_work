require_relative 'VendingMachine'

vm = VendingMachine.new

puts "π°γιγε₯γγ¦γγ γγπ°"
VM.slot_money

puts "π΄ζε₯ιι‘γ―δΈθ¨γ§γπ΄"
slot_money = VM.current_slot_money
puts "#{slot_money}ε"

puts "π§ε¨εΊ«γ―δΈθ¨γ§γπ§"
VM.show_buyable_list

puts "πεεγιΈγγ§γγ γγπ"
VM.select_and_buy_drink

puts "πΈγι£γγ―δΈθ¨γ§γπΈ"
VM.return_money
puts "πγγγγ¨γγγγγΎγγπ"