require './lib/account.rb'

describe Account do
  describe '#initialize' do
    it "has a balance of 0 before deposit or withdraw" do
        account = Account.new
        expect(account.balance).to equal(0)
    end
  end

  describe '#deposit' do
    it 'can add money into the account' do
        account = Account.new
        account.deposit(1000)
        expect(account.balance).to equal(1000)
    end

    it 'can add money into the account multiple times' do
        account = Account.new
        account.deposit(1000)
        account.deposit(500)
        expect(account.balance).to equal(1500)
    end
  end

  describe '#withdraw' do
    it 'can subtract money into the account' do
        account = Account.new
        account.deposit(1000)
        account.withdraw(500)
        expect(account.balance).to equal(500)
    end
  end

  describe '#date' do
    it 'can show the date' do
        account = Account.new
        account.date("25/12/2020")
        expect(account.transaction_date).to eq("25/12/2020")
    end
  end

end