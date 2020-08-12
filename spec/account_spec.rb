require './lib/account.rb'

describe Account do

  let(:account) {Account.new}
  include UserSpecHelper
    

  describe '#deposit' do
    it 'can add money into the account' do
        account.deposit(1000)
        expect(account.balance).to equal(1000)
    end

    it 'can add money into the account multiple times' do
        account.deposit(1000)
        account.deposit(500)
        expect(account.balance).to equal(1500)
    end
  end

  describe '#withdraw' do
    it 'can subtract money into the account' do
        account.deposit(1000)
        account.withdraw(500)
        expect(account.balance).to equal(500)
    end

    it 'shows the date when withdraw money' do
        account.withdraw(500)
        expect(account.date).to eq(Time.new.strftime("%d/%m/%Y"))
    end
  end


  describe '#transaction' do
    it 'keeps track of the info of each transaction' do
      deposit_transaction
      expect(account.single_transaction). to eq("#{Time.new.strftime("%d/%m/%Y")} || 1000 ||  || 1000")
    end

    it 'keeps track of the info of each transaction multiple times' do
        deposit_transaction
        withdraw_transaction
        expect(account.single_transaction).to eq("#{Time.new.strftime("%d/%m/%Y")} ||  || 500 || 500")
    end
  end

  describe '#transaction_array' do
    it 'contains all the transactions' do
        deposit_transaction
        withdraw_transaction
        expect(account.transactions_array).to eq(["#{Time.new.strftime("%d/%m/%Y")} || 1000 ||  || 1000", "#{Time.new.strftime("%d/%m/%Y")} ||  || 500 || 500"])
    end
  end
end