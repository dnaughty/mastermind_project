class Code

  attr_accessor :pegs
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(arr)
    arr.map! { |x| x.upcase}
    arr.each { |x| return false if !POSSIBLE_PEGS.include?(x) }
        
    return true
  end

  def initialize(arr)
    @arr = arr
    if Code.valid_pegs?(arr)
      @pegs = arr
    else
      raise "exception"
    end
  end

  def self.random(len)
    pegs = Array.new(len) { Code::POSSIBLE_PEGS.keys.sample}
    Code.new(pegs)
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

  def ==(code)

  end


end
