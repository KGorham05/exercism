# v1 - My first solution, easier to follow logic
class Raindrops
  def self.convert(n)
    sound = ''
    sound << 'Pling' if n % 3 == 0
    sound << 'Plang' if n % 5 == 0
    sound << 'Plong' if n % 7 == 0

    sound.empty? ? n.to_s : sound
  end
end
