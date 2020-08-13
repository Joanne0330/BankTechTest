require_relative 'statement'

class Account
    attr_reader :balance, :single_transaction, :transactions_array 
    RESET = nil

    def initialize
      @balance = 0
      @transactions_array = []

    end

    def deposit(input_amount)
      date = Time.new.strftime("%d/%m/%Y")
      output_amount = RESET
      @balance += input_amount

      transaction(date, input_amount, output_amount, @balance)
    end

    def withdraw(output_amount)
      date = Time.new.strftime("%d/%m/%Y")
      input_amount = RESET
      @balance -= output_amount

      transaction(date, input_amount, output_amount, @balance)
    end


    def transaction(date, deposit, withdraw, balance)
      @single_transaction = "#{date} || #{deposit} || #{withdraw} || #{@balance}"
      @transactions_array << @single_transaction
    end
end