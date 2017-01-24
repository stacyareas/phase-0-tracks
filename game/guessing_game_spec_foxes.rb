require_relative 'guessing_game_foxes'

describe GuessingGame do 
	let(:game) {GuessingGame.new}
	let(:word) { 'flight' }

	it 'takes previous guesses' do
		expect(game.used_before('g')).to be false  
		expect(game.used_before('g')).to be true
	end

	it 'allows to enter in a word' do 
		game.enters_word(word)
		expect(game.result).to eq("_ _ _ _ _ _")
		expect(game.word).to eq(word)
	end 

	it 'reveals correct letter' do
		game.enters_word(word)
		game.reveals 'g'
		expect(game.result).to eq("_ _ _ g _ _ ")
        game.reveals 'z'
        expect(game.result).to eq("_ _ _ g _ _ ")
    end 

    it 'reveals correct letter even if down or upcase ' do 
        game.enters_word(word) 
        game.reveals 'G'
        expect(game.result).to eq("_ _ _ g _ _ ")
    end

     it 'print a win statment' do
        game.enters_word(word) 
        game.reveals 'G'
        game.reveals 'i'
        game.reveals 'l'
        game.reveals 'f'
        game.reveals 'h'
        game.reveals 'T'
        expect(game.winner).to be true
    end

     it 'print a losing statment' do
       game.enters_word(word) 
        game.reveals 'k'
        game.reveals 'q'
        game.reveals 'j'
        game.reveals 'm'
        game.reveals 'd'
        game.reveals 'q'
        expect(game.winner).to be false
    end

end	


