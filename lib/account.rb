class Account
    attr_reader :balance

    def initialize
      @balance = 0
    end

    def deposit(input_amount)
      @input_amount = input_amount
      @balance += @input_amount
    end

end