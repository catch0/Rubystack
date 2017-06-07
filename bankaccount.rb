class BankAccount
    @@no_of_accounts = 0
attr_accessor :accnt_num, :check_bal, :sav_bal, :bal
    def initialize(check_bal, sav_bal)
        @accnt_num = 10.times.map{rand(10)}.join
        @check_bal = check_bal
        @sav_bal = sav_bal
        @bal = @check_bal + @sav_bal
        @rate = 0.01
        @@no_of_accounts += 1
    end
    def get_accnt_num
        puts "#{accnt_num}"
    end
    def get_checkbal
        puts "Your balance is #{@check_bal}, you're fucking rich!!"
    end
    def get_savbal
        puts "Your savings balance is #{@sav_bal}, you are a good saver!!"
    end
    def change_checkbal(x)
        @check_bal = @check_bal + x
        puts "your new balance is mother fuckin #{@check_bal} dollars!"
    end
    def change_savbal(x)
        @sav_bal = @sav_bal + x
        puts "your new savings balance is mother fuckin #{@sav_bal} dollars!"
    end
    def whatmybalance
        puts "your balance is #{@bal}"
    end
    def account_info
        puts "#{@accnt_num}, #{@bal}, #{@check_bal}, #{@sav_Bal}, #{@rate}"
    end
end
spence = BankAccount.new(2000, 3000)
#puts spen.accnt_num
#spence.get_checkbal
#spence.get_savbal
#spence.change_checkbal(-10)
#spence.change_savbal(200)
#spence.change_savbal(50000)
#spence.whatmybalance
#spence.account_info