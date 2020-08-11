# Bank Tech Test

This is a tech test which I am using Ruby and Rspec for test coverage.

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

** The Statement should look like this:**
```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```