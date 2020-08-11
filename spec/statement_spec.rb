# require './lib/statement.rb'

describe 'Statement' do
    describe 'account' do
      it 'contains the account class' do
        account_double = double :account, date: "25/12/2020",
          deposit: 1000
        statement = Statement.new(account_double)
        expect(statement.statement_array).to eq()
      end
    end


end