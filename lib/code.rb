class Code
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
    Code.valid_pegs?(arr)

  end

end
