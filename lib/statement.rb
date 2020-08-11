class Statement
  
  def initialize(account = Account.new)
    @account = account
  end

  def print_statement
    @statement_array = @account.transactions_array
    @statement_array.append("date || credit || debit || balance").reverse.join("\n") 
  end

end