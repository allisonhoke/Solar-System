class Planet
  attr_reader :name
  attr_accessor :number_of_moons, :number_of_rings, :rank_size, :year_in_earth_years, :rate_of_solar_rotation, :distance_from_the_sun

  def initialize(name, number_of_moons, number_of_rings, rank_size, year_in_earth_years, rate_of_solar_rotation, distance_from_the_sun)
    @name = name
    @number_of_moons = number_of_moons
    @number_of_rings = number_of_rings
    @rank_size = rank_size
    @year_in_earth_years = year_in_earth_years
    @rate_of_solar_rotation = rate_of_solar_rotation
    @distance_from_the_sun = distance_from_the_sun
  end

  def print_props
    puts "#{ @name } has #{ @number_of_moons } moon(s) and #{ @number_of_rings } ring(s). It is the #{ @rank_size } largest planet. One year on #{ @name } is #{ @year_in_earth_years } Earth years. The rate of solar rotation is #{ @rate_of_solar_rotation }. #{ @name } is #{ @distance_from_the_sun } miles from the sun."
  end
end
