class Statement
    # attr_accessor
  
  def initialize(account = Account.new)
    @account = account
  end

  def statement_array
    @statement_array = @account.transactions_array
  end

  def print_statement
    @statement_array.append("date || credit || debit || balance").reverse
    puts @statement_array
  end

end