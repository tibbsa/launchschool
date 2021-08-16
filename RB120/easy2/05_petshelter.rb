# RB120 OO Programming - Easy 2 Exercises
# Exercise 5 - Pet Shelter
# https://launchschool.com/exercises/693f3373
#
# Consider the following code [at the bottom]
#
# Write the classes and methods that will be necessary to make this code run,
# and print the output at the bottom.


class Pet
  def initialize(species, name)
    @species = species
    @name = name
  end

  def to_s
    "a #{@species} named #{@name}"
  end
end

class Owner
  attr_reader :name
  attr_accessor :pets

  def initialize(name)
    @name = name
    @pets = []
  end

  def number_of_pets
    pets.size
  end
end

class Shelter
  def initialize
    @known_owners = []
  end

  def adopt(person, pet)
    person.pets << pet
    @known_owners << person if !@known_owners.include?(person)
  end

  def print_adoptions
    @known_owners.each do |owner|
      puts "#{owner.name} has adopted the following pets:"
      owner.pets.each do |pet|
        puts pet
      end

      puts "\n"
    end
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."


# P Hanson has adopted the following pets:
# a cat named Butterscotch
# a cat named Pudding
# a bearded dragon named Darwin

# B Holmes has adopted the following pets:
# a dog named Molly
# a parakeet named Sweetie Pie
# a dog named Kennedy
# a fish named Chester

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.