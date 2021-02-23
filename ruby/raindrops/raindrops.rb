class Raindrops
  RAINDROPS = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def self.convert(number)
    sound = ""
    RAINDROPS.each { |prime, noise| sound << noise if (number % prime).zero? }
    sound.empty? ? number.to_s : sound
  end
end