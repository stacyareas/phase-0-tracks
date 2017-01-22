class GuessingGame

		def initialize
			@word = nil
			@result = nil
			@revealed_letters = 0
			@previous_guesses = []
		end

		def used_before(letter)
			if @previous_guesses.include?(letter)
				true
			else
				@previous_guesses << letter
				false
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

		def winner
			if @revealed_letters == @word.length
				puts "You so smart, you WON!"
				puts @result
				true
			end
			false
		end

		def enters_word(word = nil)
			puts "Choose a word."
			@word = gets.chomp
			@result = "_ " * @word.length 
		end

		def guess_word
			puts "Guess the letter!"
			gets.chomp.chr 
		end

		def attemps_progress
			puts @result
			puts "You have #{@attemps} out of #{@total_attemps}"
		end
		
		def play_game
			enters_word

			@attemps = @word.length
			@total_attemps = @attemps

			while @attemps > 0 
				attemps_progress
				@attemps -= reveal(guess_word)
				break if winner
			end
			if @revealed_letters != @word.length
				puts "You suck! Playing word: #{@word}"
			end
		end
end 

game = GuessingGame.new
game.play_game



