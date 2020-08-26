class Code

  attr_accessor :pegs

  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(arr)
    # arr.map! { |x| x.upcase}
    # arr.each { |x| return false if !POSSIBLE_PEGS.include?(x) }
        
    # return true

    arr.all? { |arrs| POSSIBLE_PEGS.has_key?(arrs.upcase)}
  end

  def initialize(arr)
    @arr = arr
    if Code.valid_pegs?(arr)
      @pegs = arr.map(&:upcase)
    else
      raise "exception"
    end
  end

  def self.random(len)
    # pegs = Array.new(len) { Code::POSSIBLE_PEGS.keys.sample}
    # Code.new(pegs)

    random_pegs = []

    len.times { random_pegs  << POSSIBLE_PEGS.keys.sample}
    Code.new(random_pegs)
  end

  def self.from_string(string)
   Code.new(string.split(""))
  end

  def [](idx)
    @pegs[idx]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(guess)
    (0...guess.length).count { |i| guess[i] == @pegs[i] }

  
  end

  def num_near_matches(guess_code)
    num_matches = (0...guess_code.length).count do |i|
      guess_peg = guess_code[i]
      @pegs.include?(guess_peg)
    end

    num_matches - self.num_exact_matches(guess_code)
  end

  def ==(code)
    #return false if code.length != self.length

    self.pegs == code.pegs


    # if code == self
    #   return true
    # else
    #   return false
    # end

    
    



  end


end
