describe 'Statement' do
    describe '#print' do
      it 'prints a statement of one transations' do
        account_double = double :account, deposit: 1000, transactions_array: ["25/12/2020 || 1000.00 ||  || 1000.00"]
        statement = Statement.new(account_double)
        expect(statement.print).to eq ("date || credit || debit || balance\n25/12/2020 || 1000.00 ||  || 1000.00")
      end

      it 'prints a statement of no transaction' do
        account_double = double :account, transactions_array: []
        statement = Statement.new(account_double)
        expect(statement.print).to eq ("date || credit || debit || balance")
      end

      it 'prints a statement of multiple transactions and in deficit' do
        account_double = double :account, deposit: 500, withdraw: 862.35,
          transactions_array: ["13/08/2020 || 500.00 ||  || 500.00", "13/08/2020 ||  || 862.35 || -362.35"]
        statement = Statement.new(account_double)
        expect(statement.print).to eq ("date || credit || debit || balance\n13/08/2020 ||  || 862.35 || -362.35\n13/08/2020 || 500.00 ||  || 500.00")   
      end
    end
end

