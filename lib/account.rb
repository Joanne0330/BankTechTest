require_relative 'statement'

class Account
    attr_reader :balance, :date, :single_transaction, :transactions_array
    RESET = nil

    def initialize
      @balance = 0
    #   @output_amount = 0
    #   @transactions_array = []

    end

    def deposit(date, input_amount)
      @date = date
      @input_amount = input_amount
      @output_amount = RESET
      @balance += @input_amount

      transaction(@date, @input_amount, @balance)
    end

    def withdraw(date, output_amount)
      @date = date
      @output_amount = output_amount
      @input_amount = RESET
      @balance -= @output_amount
    end


    def transaction(date, deposit, balance)
    #   @single_transaction = "#{@transaction_date} || #{@input_amount} || #{@output_amount} || #{@balance}"
    #   @transactions_array << @single_transaction
    end
end