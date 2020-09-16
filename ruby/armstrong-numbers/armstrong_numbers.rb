module ArmstrongNumbers
  def self.include?(num)
    num.digits.map { |digit| digit**num.digits.length }.sum == num
  end
end

