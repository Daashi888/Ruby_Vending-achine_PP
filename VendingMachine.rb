require './Introduction'
require './Drink'

class VendingMachine
  MONEY = [10, 50, 100, 500, 1000].freeze
  def initialize
    @slot_money = 0
  end

  def current_slot_money
    puts "今の総計は#{@slot_money}円です。"
  end

  def slot_money(money)
    return false unless MONEY.include?(money)
    @slot_money += money
  end

  def return_money
    puts "払い戻し：お釣りは#{@slot_money}円です。"
    @slot_money = 0
  end

  def money_case(input_number)
    if 1
      puts "失敗１"
    else 2
      current_slot_money
    elsif 3
      return_money
    elsif 4
      puts "終了します"
      return false
    else
      puts "失敗"
    end
  end

  def beginning
    puts "自動販売機にお金を投入してください"
    puts "1:お金を投入する"
    puts "2:合計を取得する"
    puts "3:払い戻しをする"
    puts "4:終了する"
    input_number = gets.chomp
    number = ['1', '2', '3', '4']
    while true
      if number.include?(input_number)
        return(input_number)
      else
        puts "数字が間違っています！"
        puts "自動販売機にお金を投入してください"
        puts "1:お金を投入する"
        puts "2:合計を取得する"
        puts "3:払い戻しをする"
        puts "4:終了する"
        input_number = gets.chomp
      end
    end
  end
end