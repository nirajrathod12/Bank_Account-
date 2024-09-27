$arr = Array.new
module Tansactionable
    
    def trans_deposit(deptamt,amount)
      amount = amount + deptamt
        $arr.push("#Depositamt : #{amount}")
        return amount 
            
    end

    def trans_withdrow(withamt,amount)
        amount = amount - withamt
        $arr.push("#Withdrowamt : #{amount}")
        return amount
          
    end
   
end