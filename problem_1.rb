# Project Euler Problem 1
class Problem1
  def self.solve arg
    k = (arg-1).div 3
    t = (arg-1).div 5
    h = (arg-1).div 15
    3*k*(k + 1)/2 + 5*t*(t+1)/2 - 15*h*(h+1)/2
  end

  def self.solve1 arg
    sum = 0
    (3..arg-1).each do |index|
      if index % 3 == 0
        sum += index
      elsif index % 5 == 0
        sum += index
      end
    end
    sum
  end

  def self.solve2 arg
    (3..arg-1).inject(0) { |sum, n| (n % 3 == 0 or n % 5 == 0) ? sum + n : sum}
  end
end