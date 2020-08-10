class Account
    attr_reader :balance, :transaction_date, :single_transaction

    def initialize
      @balance = 0
      @input_amount = 0
      @output_amount = 0
      @transaction_date = ""
      @single_transaction = ""

    end

    def deposit(input_amount)
      @input_amount = input_amount
      @balance += @input_amount
    end

    def withdraw(output_amount)
      @output_amount = output_amount
      @balance -= @output_amount
    end

    def date(transaction_date)
        @transaction_date = transaction_date
    end

    def transaction
      @single_transaction = "#{@transaction_date} || #{@input_amount} || #{@output_amount} || #{@balance}"
    end

end