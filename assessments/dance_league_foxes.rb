class Dancer
    attr_reader :name 
    attr_accessor :age, :card

    def initialize (name, age)
        @name = name 
        @age = age
        @card = []
    end

    def pirouette
        "*twirls*"
    end    

    def bow
        "*bows*"
    end

    def queue_dance_with(partner)
        @card << partner
    end 

    def begin_next_dance
        new_partner = @card.shift
        "Now dancing with #{new_partner}."
    end

    def tutu_color
        colors = ["blue", "white", "green","pink", "orange", "yellow"]
        colors.sample
    end    
end 

dancer = Dancer.new("Stacy Areas", 21)
p dancer.queue_dance_with("Lamar Poole")
p dancer.queue_dance_with("Stacy Areas")
p dancer.begin_next_dance
p dancer.begin_next_dance
p dancer.tutu_color