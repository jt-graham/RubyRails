class BankAccount
	attr_reader :checking_account_number, :saving_account_number, :checking_balance, :saving_balance
	@@accounts = 0
	def initialize
    	@checking_account_number = rand(99999999)
    	@saving_account_number = rand(99999999)
    	@checking_balance = 0
    	@saving_balance = 0
    	@@accounts += 2
  	end
  	def checking_bal
  		puts "Your current checking balance is #{@checking_balance}"
  		self
  	end
  	def saving_bal
  		puts "Your current savings balance is #{@saving_balance}"
  		self
  	end
  	def deposit_checking (amount)
  		@checking_balance += amount
  		self
  	end
  	def deposit_saving (amount)
  		@saving_balance += amount
  		self
  	end
  	def withdraw_checking (amount)
  		if @checking_balance < amount
  			puts "Insufficient Balance.  You currently have #{@checking_balance} in your checking account."
  		else
  			@checking_balance -= amount
  		end
  		self
  	end
  	def withdraw_saving (amount)
  		if @saving_balance < amount
  			puts "Insufficient Balance.  You currently have #{@saving_balance} in your saving account."
  		else
  			@saving_balance -= amount
  		end
  		self
  	end
  	def totalbalance
  		puts "Your total balance for checking/saving is :#{@checking_balance + @saving_balance}"
  		self
  	end

  	def private_information
  		totalaccounts
  		account_information
  	end
  	private
  	def totalaccounts
  		puts "You currently have #{@@accounts} active accounts"
  		self
  	end
  	def account_information
  		puts "Checking Account Number: #{@checking_account_number}"
  		puts "Saving Account Number: #{@saving_account_number}"
  		self
  	end
end

Test1 = BankAccount.new
# Test1.deposit_checking(100).checking_bal.withdraw_checking(80).checking_bal
# Test1.private_information
Test1.deposit_checking(100).deposit_saving(5000).checking_bal.saving_bal.withdraw_checking(1000).withdraw_saving(1000).saving_bal.totalbalance.private_information