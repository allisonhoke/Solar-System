class SolarSystem
  attr_accessor :planets

  def initialize #the purpose of this method is to create a hash when object: SolarSystem is instantiated
    @planets = []
  end

  def add_planet(planet) #the purpose of this method is to add a planet to the array in method: initialize
    @planets << planet
  end

  def get_planet_by_name(name) #the purpose of this method is to check the array and return the planet information for a specified planet string(name/variable used)
    i = 0
    until @planets[i].name == name.capitalize
      i += 1
    end
    planet = @planets[i]
    return planet #returns object: Planet which includes all of the planet attributes
  end

  def distance_between_planets(planet_one, planet_two)
    if planet_one.distance_from_the_sun > planet_two.distance_from_the_sun
      return "These planets are #{ planet_one.distance_from_the_sun - planet_two.distance_from_the_sun } miles apart."
    elsif planet_two.distance_from_the_sun > planet_one.distance_from_the_sun
      return "These planets are #{ planet_two.distance_from_the_sun - planet_one.distance_from_the_sun } miles apart"
    else
      return "These are the same planets"
    end
  end

end
