class Spaceship
attr_accessor :name
attr_reader :speed

    def initialize(name, speed)
        @name = name
        @speed = 200000
        @location = location
    end

    def name_and_speed
        puts "Name is: #{@name} and has a speed of: #{@speed}" 
    end

    def enable_sheild
       puts "You now have protection."
    end
   
    def disable_sheild
        puts "You don't have protection."
    end

    def wrap_to(location)
        puts "Traveling at #{@speed} to #{location}!"
    end 
end

spaceship = Spaceship.new("Jack", "100,000 MPH")
spaceship.name_and_speed

spaceship = Spaceship.new("Molly", @speed)
spaceship.enable_sheild
spaceship.wrap_to("Mars")
spaceship.wrap_to("Earth")