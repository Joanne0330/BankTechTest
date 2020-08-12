describe 'Statement' do
    describe '#print' do
      it 'prints a statement of all the transcations' do
        account_double = double :account, deposit: 1000, transactions_array: ["25/12/2020 || 1000 ||  || 1000"]
        statement = Statement.new(account_double)
        expect(statement.print).to eq ("date || credit || debit || balance\n25/12/2020 || 1000 ||  || 1000")
      end
    end
end

