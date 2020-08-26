require_relative "code"

class Mastermind

    def initialize(len)
        
        @secret_code = Code.random(len)
    end

    def print_matches(inst)

        puts @secret_code.num_exact_matches(inst)

        puts @secret_code.num_near_matches(inst)
    end

    def ask_user_for_guess
        print 'Enter a code'
        guess = Code.from_string(gets.chomp)

        self.print_matches(guess)

        @secret_code == guess
    end



end
