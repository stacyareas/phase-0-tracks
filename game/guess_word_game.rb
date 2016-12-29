class GuessWordGame
    attr_accessor :word
    attr_reader :result, :revealed_letters
    def initialize
        @revealed_letters = 0
        @word = nil 
        @previous_guesses = []
    end
    
    def used_before(letter)
        if @previous_guesses.include?(letter)
            return true
        else
            @previous_guesses << letter
            return false
        end
    end

    def reveal(letter)
        lc_letter = letter.downcase
        return 0 if used_before(letter)
        @word.each_char.with_index do |l,index|
            if l == lc_letter || l == lc_letter.upcase
                @revealed_letters += 1
                @result[2* index] = l
            end 
        end
        return 1
    end

    def win?
        if @revealed_letters == @word.length
            puts "You won!"
            puts @result 
            return true 
        end
        false
    end

    def read_secret_word(word = nil)
        puts "Enter you playing word."
        @word = word || gets.chomp 
        @result = "_ " * @word.length
    end
    
    def guess! 
        puts "Guess a letter :"
        gets.chomp.chr
    end

    def print_progress 
        puts @result
        puts "You have #{@attemps} of #{@total_attempts} "
    end

    def play 
        read_secret_word
        
        @attemps = @word.length
        @total_attempts = @attemps

        while @attemps > 0 
            print_progress
            @attemps -= reveal(guess!)
            break if win?
        end
        puts "You lose! The word was #{@word}." 
    end

end


game = GuessWordGame.new
game.play