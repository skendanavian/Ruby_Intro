
module Offroadable

  def offroad
    "I can go off the road"
  end


end


class Vehicle 
 attr_accessor :color, :model, :year
 attr_reader :year

 @@number_of_vehicles = 0


 def initialize(year, model, color)
  @@number_of_vehicles += 1
  @year = year
  @color = color
  @model = model
  @current_speed = 0
 end 


 def to_s
  "#{year}, #{@model}, #{color}, #{@current_speed}"
 end

  def self.number_of_vehicles
    @@number_of_vehicles
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles/gallons} miles per gallon of gas"
   end

   def speed_up(num)
    @current_speed += num
   end
  
   def brake(num)
    @current_speed -= num
   end
  
   def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
   end
  
   def current_speed
   puts "you are now going #{@current_speed} mph. "
   end
  
  
   def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
   end

   def age
    "Your #{self.model} is #{vehicle_age} years old."
   end

   private 

   def vehicle_age
    Time.now.year - self.year
   end
end



class MyCar < Vehicle
NUMBER_OF_DOORS = "four doors"


end


class MyTruck < Vehicle
  include Offroadable
  NUMBER_OF_DOORS = "f doors"
end



lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_down
lumina.current_speed
lumina.spray_paint('red')
MyCar.gas_mileage(13,351)

my_car = MyCar.new("2010", "Ford Focus", "silver")
puts my_car  # => My car is a silver, 2010, Ford Focus.

# f150 = MyTruck.new("2000", "Ford F150", "Red")
# puts f150

puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors
puts Vehicle.number_of_vehicles
puts lumina.age

