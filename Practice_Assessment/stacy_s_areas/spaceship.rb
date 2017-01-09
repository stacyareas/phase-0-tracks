class Spaceship
attr_accessor :name, :location
attr_reader :speed


    def initialize(name, speed)
        @name = name
        @speed = 200000
    end
# Adding a method that have a name and speed the Spaceship
    def name_and_speed
        puts "Name is: #{@name} and has a speed of: #{@speed}" 
    end
# When endable is called it will print that it has protection
    def enable_sheild
       puts "You now have protection."
    end
# When disable is called it will print it doesn't have protection   
    def disable_sheild
        puts "You don't have protection."
    end
# warp_to method takes a parameter of location and print 
# a statement saying how fast it is going and to where. 
    def warp_to(location)
        puts "Traveling at #{@speed} to #{location}!"
        collected_items
    end 
end

spaceship = Spaceship.new("Jack", "100,000 MPH")
spaceship.name_and_speed

spaceship = Spaceship.new("Molly", @speed)
spaceship.enable_sheild
spaceship.warp_to("Mars")
spaceship.warp_to("Earth")