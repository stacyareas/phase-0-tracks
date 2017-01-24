# Create a game that takes a secret word and allows a user to guess it using 
# class.
class GuessWordGame
    attr_accessor :word
    attr_reader :result, :revealed_letters
# Create a initialize method   
    def initialize
        @revealed_letters = 0
        @word = nil 
        @previous_guesses = []
    end
# Create a method that remembers a letter that has been used before
# that stores it in an array.     
    def used_before(letter)
        if @previous_guesses.include?(letter)
            return true
        else
            @previous_guesses << letter
            return false
        end
    end
# Create a method that if a letter that is included in the word choosen 
# is revealed where the letter appears in the word. 
    def reveal(letter)
        lc_letter = letter.downcase 
        return 0 if used_before(letter) 
        @word.each_char.with_index do |l,index| # We want to go through each letter 
            # in the word and if choosen correcly reveal the letter whether it be upcase
            # or downcase
            if l == lc_letter || l == lc_letter.upcase
                @revealed_letters += 1 # revealed_letters += 1 so that the guess donesn't 
                # count against if it is right
                @result[2* index] = l  # store result [2* index] to equal l because we created
                # space between our letter in the word choosen
            end 
        end
        return 1
    end
# Create a win method that tells the user that they have won if they guess correctly
    def win?
        if @revealed_letters == @word.length
            puts "You won!"
            puts @result 
            return true 
        end
        false
    end
# Create method that tells the user to "Enter your playing word." 
    def read_secret_word(word = nil) # We want to set a parameter for an 
        # argument to equal nil since we don't know what the user will pick 
        puts "Enter your playing word."
        @word = gets.chomp 
        @result = "_ " * @word.length # store result as "_ " *word.length so we can 
        # store the length of the word and replace it will the underscores so 
        # the user can see how long the word is 
    end
    # Create a method that asks the user to guess a letter
    def guess! 
        puts "Guess a letter :"
        gets.chomp.chr
    end
    # Create a method that prints progress and tells the user how many attemps they have
    # and how many attemps in total
    def print_progress 
        puts @result
        puts "You have #{@attemps} of #{@total_attempts} "
    end
    # Create a method that tracks playing words and subtracks a number of 
    # attemps it incorrect and keeps going until attemps are out and 
    # tells them "You lose! The word was #{word}"
    # Otherwise puts win method
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