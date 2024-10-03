require_relative 'Reportable.rb'
require_relative 'Transactionable.rb'

class Bankaccount

include Tansactionable
include Reportable

  def initialize(name,amt)
     @Holdername =  name
     @Amount = amt
  end
  def account_details

    puts "Holder name is: #{@Holdername} and Starting Account Amount : #{@Amount}" 
    update_balance
    transaction_history
    generate_report(@Amount)
  end
  
  private
  def update_balance
    @Amount = trans_deposit(1000,@Amount)
     puts "DepositAmount 1000 credit in you are Account , currentAmount:#{@Amount}"
    @Amount = trans_withdrow(100,@Amount)
     puts "Withdrow Amount 100 , currentAmount:#{@Amount}"
     @Amount = trans_deposit(5000,@Amount)
     puts "DepositAmount 5000 credit in you are Account , currentAmount:#{@Amount}"
    @Amount = trans_withdrow(800,@Amount)
     puts "Withdrow Amount 800 , currentAmount: #{@Amount}"
     @Amount = trans_withdrow(1000,@Amount)
     puts "Withdrow Amount 1000 , currentAmount: #{@Amount}"
  end
  
  protected
  def transaction_history
     print "Account Transection history: #{$arr}\n"
  end

end

objbank = Bankaccount.new("Niraj Rathod" , 40000)
 
objbank.account_details()
