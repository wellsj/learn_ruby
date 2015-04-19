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
	a.split(' ').each {|s, x| s+x}
end