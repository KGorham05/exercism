# v1 - My first solution, easier to follow logic
class Raindrops
  def self.convert(n)
    converted = ""
    converted << "Pling" if n % 3 == 0
    converted << "Plang" if n % 5 == 0
    converted << "Plong" if n % 7 == 0

    converted.empty? ? n.to_s : converted
  end
end
