#module Shout
#	def self.yell_angrily(words)
#		words + "!!!" + " :("
#	end
#	def self.yelling_happily(words)
#		words +  "!!!" + " :)"
#	end 
#end 

#p Shout.yell_angrily("I hate you")
#p Shout.yelling_happily("I love you")

module Shout
	def shouts(word)
	puts "It's a bird, it's a plane, no it's a #{word}!!"
	end 
end

class Girl 
	include Shout
end 

class Boy
	include Shout
end 

girl = Girl.new
girl.shouts("unicorn")

boy = Boy.new
boy.shouts("robot")