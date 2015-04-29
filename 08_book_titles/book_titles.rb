class Book
	attr_accessor :title

	def initialize(title="")
		@title = title
	end

	def title
	    output = []
	    little_words = ["and", "in", "the", "of", "a", "an"]
	    @title.split(' ').map {|word| little_words.include?(word)? output << word : output << word.capitalize}
	    output[0].capitalize!
	    output.join(' ')
	end
end