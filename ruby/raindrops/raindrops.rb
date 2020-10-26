# v1 - My first solution, easier to follow logic. 
class Raindrops
  def self.convert(n)
    converted = ""
    if (n % 3 == 0)
      converted += "Pling"
    end
    if (n % 5 == 0) 
      converted += "Plang"
    end
    if (n % 7 == 0) 
      converted +="Plong"
    end
    converted.empty? ? n.to_s : converted
  end
end

# v2 - Shorter solution using .each, but less readable IMO
# class Raindrops
#   RAINDROPS = { 3 => "Pling", 5 => "Plang", 7 => "Plong" }

#   def self.convert(n)
#     converted = ""
#     RAINDROPS.each { |prime, noise| converted += noise if n % prime == 0 }
#     converted.empty? ? n.to_s : converted
#   end
# end


