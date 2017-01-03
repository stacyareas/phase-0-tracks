class Dancer
    attr_reader :name 
    attr_accessor :age, :card, :new_partner

    def initialize (name, age)
        @name = name 
        @age = age
        @card = []
        @new_partner = ""
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
        @new_partner = @card.rotate[1]
        puts "Now dancing with #{@new_partner}."
    end
end 




