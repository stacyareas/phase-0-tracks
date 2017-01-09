class Spaceship
attr_accessor :name, :location
attr_reader :speed

    def initialize(name, speed)
        @name = name
        @speed = 200000
        @@collected_items = []
    end
# Adding a method that have a name and speed the Spaceship
    def name_and_speed
        puts "Name is: #{@name} and has a speed of: #{@speed}" 
    end
# When endable is called it will print shield enable
    def enable_shield
       puts "shield enable."
    end
# When disable is called it will print shield disable   
    def disable_shield
        puts "shield disable."
    end
# warp_to method takes a parameter of location and print 
# a statement saying how fast it is going and to where. 
    def warp_to(location)
        puts "Traveling at #{@speed} to #{location}!"
    end
# tractor_beam method takes a item parameter which is stored in 
# the inventory. when called we want to diable the shield so we can add item.
# if the item is too heavy we want to enable the shield and skip adding into inventory.
    def tractor_beam(item) 
        if item.ord < 500
            disable_shield 
            @@collected_items << item
            enable_shield
        else
            enable_shield 
        end 
    end

    def pickup(items, location)
        
    end     
end

spaceship = Spaceship.new("Jack", "100,000 MPH")
spaceship.name_and_speed

spaceship = Spaceship.new("Molly", @speed)
spaceship.enable_shield

spaceship.warp_to("Mars")
spaceship.warp_to("Earth")

spaceship.tractor_beam("cow")
spaceship.tractor_beam("moon rock")

