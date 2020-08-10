class Account
    attr_reader :balance

    def initialize
      @balance = 0
    end

    def deposit(input_amount)
      @input_amount = input_amount
      @balance += @input_amount
    end

    def withdraw(output_amount)
      @output_amount = output_amount
      @balance -= @output_amount
    end
end