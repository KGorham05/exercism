class SpaceAge
  def initialize(age_in_seconds) 
    @age_in_seconds = age_in_seconds
  end

  # Mercury: orbital period 0.2408467 Earth years
  def on_mercury
    
  end

  # Venus: orbital period 0.61519726 Earth years
  def on_venus

  end

  # Earth: orbital period 365.25 Earth days, or 31557600 seconds
  def on_earth
    @age_on_earth =  @age_in_seconds / 31556700.0 
  end
  
  # Mars: orbital period 1.8808158 Earth years
  def on_mars

  end

  # Jupiter: orbital period 11.862615 Earth years
  def on_jupiter

  end

  # Saturn: orbital period 29.447498 Earth years
  def on_saturn

  end

  # Uranus: orbital period 84.016846 Earth years
  def on_uranus

  end

  # Neptune: orbital period 164.79132 Earth years
  def on_neptune

  end

end
