class Foobar
	def Foobar.baz(arr)
		ints = arr.collect { |x| Integer(x)}
		intstwo = ints.collect { |x| x + 2 }
		intsthree = intstwo.delete_if { |x| x%2 != 0 }
		intsfour = intsthree.uniq
		intsfive = intsfour.delete_if { |x| x > 10 }
		intsfive.inject(:+)
	end
end
