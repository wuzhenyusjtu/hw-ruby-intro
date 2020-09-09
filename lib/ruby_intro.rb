# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0){|sum,x| sum+x}
end

def max_2_sum arr
	return 0 if arr.empty?
	return arr[0] if arr.length == 1
	return arr.sort[-2..-1].inject(:+)
end

def sum_to_n? arr, n
  return false if arr.empty? or arr.length == 1
  (arr.empty? && n.zero?) || arr.permutation(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
	/^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
	return true if s == "0"
	/^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
  attr_accessor :isbn
	attr_accessor :price
	
	def initialize(isbn, price)
		raise ArgumentError, 
			"ISBN number is the empty string or the price is less than or equal to zero" if isbn.empty?  or price <= 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		sprintf("$%2.2f", @price)
	end
end
