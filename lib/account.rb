require_relative 'statement'

class Account
    attr_reader :balance, :date, :single_transaction, :transactions_array
    RESET = nil

    def initialize
      @balance = 0
    #   @output_amount = 0
    #   @transactions_array = []

    end

    def deposit(input_amount)
      @date = Time.new.strftime("%d/%m/%Y")
      @input_amount = input_amount
      @output_amount = RESET
      @balance += @input_amount

      transaction(@date, @input_amount, @output_amount, @balance)
    end

    def withdraw(output_amount)
      @date = Time.new.strftime("%d/%m/%Y")
      @output_amount = output_amount
      @input_amount = RESET
      @balance -= @output_amount
    end


    def transaction(date, deposit, withdraw, balance)
    #   @single_transaction = "#{@transaction_date} || #{@input_amount} || #{@output_amount} || #{@balance}"
    #   @transactions_array << @single_transaction
    end
end