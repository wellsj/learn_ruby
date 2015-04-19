def ftoc(f)
	((f-32)/1.8).round.to_i
end

def ctof(c)
	(1.8*c + 32).round(1)
end