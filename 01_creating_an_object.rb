# Define a module
module Drive
  def rev(sound)
    puts "#{sound}"
  end
end



# Define a class with mixin from module
class MyClass
  include Drive
end

my_obj = MyClass.new


# Initialize a New Object

# class GoodDog
#   attr_accessor :name  # refactor to built in getter/setter provided by ruby
  # can also use attr_reader or attr_writer to only get or set

  # def initialize(name)
    # The @name is an instance - keeps track of state for each object
  #   @name = name
  # end

  # def get_name
  #   @name
  # end


  # def name                  # This was renamed from "get_name"
  #   @name
  # end


  # def set_name=(name)
  #   @name = name
  # end

  # def name=(n)              # This was renamed from "set_name="
  #   @name = n
  # end

#   def speak
#     # now that getter/setter is assigned we don't need the @ in front of name
#     "#{name} says Arf!"
#   end
# end

class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says arf!"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
puts sparky.info      # => Sparky weighs 10 lbs and is 12 inches tall.

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info      # => Spartacus weighs 45 lbs and is 24 inches tall.
