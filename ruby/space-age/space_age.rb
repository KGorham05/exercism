class SpaceAge
  def initialize(age_in_seconds) 
    @age_on_earth =  age_in_seconds / 31556700.to_f
  end
  def on_mercury
    @age_on_earth / 0.2408467
  end
  def on_venus
    @age_on_earth / 0.61519726
  end
  57600 seconds
  def on_earth
    @age_on_earth
  end
  f on_mars
    @age_on_earth / 1.8808158
  end
   def on_jupiter
    @age_on_earth / 11.862615
  end
  def on_saturn
    @age_on_earth / 29.447498
  end
  def on_uranus
    @age_on_earth / 84.016846
  end
   def on_neptune
    @age_on_earth / 164.79132
  end
end
