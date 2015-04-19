def sum(a) 
	if a.length==0
		0
	else
		a.inject(:+)
	end
end

def add(a, b)
	a+b
end

def subtract(a, b)
	a-b
end

def multiply(*a)
	a.inject(:*)	
end

def power(a, b)
	a ** b
end

def factorial(a)
	if a == 0
		1
	else
		a.downto(1).reduce(:*)
	end
end
