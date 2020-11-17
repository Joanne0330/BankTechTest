require_relative 'statement'

class Account
    attr_reader :balance, :last_transaction, :transactions_array 

    def initialize
      @balance = 0
      @transactions_array = []
    end

    def deposit(input_amount)

      date = create_date

      @balance += input_amount
      input_amount = '%.2f'%input_amount 
      transaction(date, input_amount, nil, balance)
    end

    def withdraw(output_amount)

      date = create_date

      @balance -= output_amount
      output_amount = '%.2f'%output_amount
      transaction(date, nil, output_amount, balance)
    end

    def transaction(date, deposit, withdraw, balance)
      @last_transaction = "#{date} || #{deposit} || #{withdraw} || #{'%.2f'%balance}"
      @transactions_array << @last_transaction

    end

    def create_date
      Time.new.strftime("%d/%m/%Y")

    end
end