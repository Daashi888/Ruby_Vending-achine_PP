require './VendingMachine'
require './Drink'

class Introduction
  def self.starting
    vendingmachine = VendingMachine.new
    drink = Drink.new('コーラ', 120, 5)
    next_turn = true
    while next_turn
      next_turn = vendingmachine.money_case(vendingmachine.beginning)
    end
  end
end

Introduction.starting