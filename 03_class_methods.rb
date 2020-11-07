# class GoodDog
#   #  Class Variable
#   @@number_of_dogs = 0

#   def initialize
#     @@number_of_dogs += 1
#   end

#   # Class method (self.foo)
#   def self.total_number_of_dogs
#     @@number_of_dogs
#   end
# end

# puts GoodDog.total_number_of_dogs   # => 0

# dog1 = GoodDog.new
# dog2 = GoodDog.new

# puts GoodDog.total_number_of_dogs   # => 2


class GoodDog
  # Ex of a constant --> all caps or first letter cap
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age  = a * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky.age             # => 28

#  equivalent to puts sparky.inspect --> great for debugging
p sparky

