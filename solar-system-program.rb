require_relative 'solar-system'
require_relative 'planet'

mercury = Planet.new("Mercury", 0, 0, "ninth", 0.24, 4, 4300000)
venus = Planet.new("Venus", 0, 0, "sixth", 0.62, 5, 67240000)
earth = Planet.new("Earth", 1, 0, "fifth", 1, 2, 92960000)


milky_way = SolarSystem.new
milky_way.add_planet(mercury)
milky_way.add_planet(venus)
milky_way.add_planet(earth)

puts "Time to learn about planets!"
puts "Which planet would you like to learn about?"
puts "Mercury"
puts "Venus"
puts "Earth"
choice = gets.chomp.downcase

while true
  if choice == "exit"
    break
  else
    planet_choice = milky_way.get_planet_by_name(choice) #creates a variable that stores an object: Planet from the @planets array attribute in the milky_way SolarSystem
    planet_choice.print_props #this is an object: Planet and this method prints a string via a Planet method

    puts " "
    puts "Which planet would you like to learn about next? (or type exit to quit)"
    puts "Mercury"
    puts "Venus"
    puts "Earth"
    choice = gets.chomp.downcase
  end
end

puts " "
puts "Let's find out the distance between two planets!"
puts "Please enter the first planet"
first_planet = gets.chomp.downcase
puts "Please enter the second planet"
second_planet = gets.chomp.downcase

pl_one = milky_way.get_planet_by_name(first_planet) #takes a string and returns object: Planet
pl_two = milky_way.get_planet_by_name(second_planet)

distance = milky_way.distance_between_planets(pl_one, pl_two) #accesses and compares the distance_from_the_sun attributes of the objects: Planet(s)
puts distance
