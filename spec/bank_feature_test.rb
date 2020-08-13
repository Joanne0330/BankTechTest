require './lib/account.rb'
require './lib/statement.rb'

describe 'Account and Statement Feature Test' do
  it 'makes a deposit, withdraw, and print a statement' do
    account = Account.new
    account.deposit(1000)
    account.withdraw(500)
    statment = Statement.new(account)
    expect(statement.print).to eq ("date || credit || debit || balance\n#{Time.new.strftime("%d/%m/%Y")} || || 500.00 || 500.00\n#{Time.new.strftime("%d/%m/%Y")} || 1000.00 ||  || 1000.00")
  end
end