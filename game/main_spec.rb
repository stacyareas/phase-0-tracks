
require_relative 'guess_word_game'

describe GuessWordGame do 
    let(:game) {GuessWordGame.new}
    let(:word) { 'Hi' }

    it 'tracks previous guesses' do
        expect(game.used_before('a')).to be false
        expect(game.used_before('a')).to be true
    end

    it 'read secret word' do
        game.read_secret_word(word)
        expect(game.result).to eq("_ _ ") 
        expect(game.word).to eq(word)
    end  

    it 'reveals letter' do 
        game.read_secret_word(word) 
        game.reveal 'i'
        expect(game.result).to eq("_ i ")
        game.reveal 'y'
        expect(game.result).to eq("_ i ")
    end

    it 'reveals letter uppercase' do 
        game.read_secret_word(word) 
        game.reveal 'I'
        expect(game.result).to eq("_ i ")
    end

    it 'win scenario' do
        game.read_secret_word(word) 
        game.reveal 'I'
        game.reveal 'h'
        expect(game.win?).to be true
    end

    it 'lose scenario' do
       game.read_secret_word(word) 
        game.reveal 'k'
        game.reveal 'q'
        expect(game.win?).to be false
    end

end