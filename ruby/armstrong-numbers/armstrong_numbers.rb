module ArmstrongNumbers
  def self.include?(num)
    num_digits = num.digits.length
    num.digits.sum { |digit| digit ** num_digits } == num
  end
end

