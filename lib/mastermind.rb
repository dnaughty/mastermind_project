require_relative "code"

class Mastermind

    def initialize(len)
        
        @secret_code = Code.random(len)
    end

    def print_matches(inst)

        print num_exact_matches(inst)

    end

    def ask_user_for_guess
        print 'Enter a code'
        input = gets.chomp


    end



end
