
def echo(a)
	a
end
def shout(a)
	a.upcase
end
def repeat(a)
	a*2
end
def repeat(a,b=2)
	("#{a} "*b).strip
end
def start_of_word(a,b=1)
	a[0,b]
end
def start_of_words(a)
	a.split('')[0]
end
def first_word(a)
	a.split(' ').first
end
def titleize(a)
	little_words = ['a','an','am','and','any','are','as','at','be','by','can','do','each','over','from','go','he','his','for','get','he','him','his', 'if','in','into','is','it',"it's",'let','my','no','on','or','the']
	title = a.split.map {|word| little_words.include?(word) ? word : word.capitalize}
	title[0].capitalize!
	title.join(' ')
end