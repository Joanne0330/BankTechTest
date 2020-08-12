# Bank Tech Test

This is a tech test which I am using Ruby and Rspec for test coverage.

**How it works**
To test the functionality of this app, you'll have to use the terminal.
```
Step 1: you type 'irb' into your terminal to launch IRB
Step 2: require './lib/account.rb'
Step 3: account = Account.new

Step 4: To make a deposit, withdraw, get a receipt of the most recent transaction:

  -User can make a deposit of any amount by typing in:
    example: account.deposit(1000)

  -User can make a withdraw of any amount by typing in:
    example: account.withdraw(500)

  -User can request an optional receipt of the last transaction made by typing in :
    example: account.single_transaction

Step 5: To print a statement of all the transactions made:

  -User can print a statment by typing in first:
    statement = Statment.new(account)
    then: print statement.print
```

**User Strories**

```
As a User
So that I can save money
I would like to make a deposit into my account
```
```
As a User
So that I can withdraw money
I would like to with withdraw money from my account
```
```
As a User
So that I know how much money I have in my account
I would like to see the balace in my account
```
```
As a User
So that I know when I made the transaction
I would like to see the date the transaction was made
```
```
As a User
So that I can see all the transaction I've made
I would like a statement listing the dates and transaction that I made
```
```
As a Bank
So that my clients can read their statement
I would like all the transactions listed in the most recent order
```

**The Statement should look like this:**
```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

**Running the test**
To run the test, simply type:
```
rspec
```
**Other installation for this challenge**
Installed gems in the Gemfile with:
```
bundler
``` 
Then installed the following gems:
```
gem 'rspec'
gem 'capybara'
gem 'rubocop', '0.79.0'
```
