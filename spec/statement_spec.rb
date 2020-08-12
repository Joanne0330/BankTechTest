# describe 'Statement' do
#     describe 'account' do
#       it 'contains the account class' do
#         account_double = double :account, date: "25/12/2020", deposit: 1000,
#           transactions: ["25/12/2020 || 1000 ||  || 1000"], 
#           transactions_array: ["25/12/2020 || 1000 ||  || 1000"]
#         statement = Statement.new(account_double)
#         expect(statement.print_statement).to eq ("date || credit || debit || balance\n25/12/2020 || 1000 ||  || 1000")
#       end
#     end
# end