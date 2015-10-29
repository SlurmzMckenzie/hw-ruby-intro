# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	# YOUR CODE HERE
	#if arr.empty? then return 0 end
	return arr.inject(0) { | sum, x | sum + x }
end

def max_2_sum arr
	# YOUR CODE HERE
	if arr.empty? then return 0 elsif arr.count == 1 then return arr[0] end
	return sum(arr.sort.last(2))
end

def sum_to_n? arr, n
	# YOUR CODE HERE
	#if arr.empty? then return false elsif arr.count == 1 then return false end
	#print arr.product(arr)
	#arr.product(arr).any? { | x | sum(x) == n }
	arr.combination(2).to_a.any? { |x| sum(x) == n}
end

#sum_to_n?([-1,-2,3,4,6,-8], 12)

#### Part 2

def hello(name)
	# YOUR CODE HERE
	return "Hello, " + name
end

def starts_with_consonant? s
	# YOUR CODE HERE
	s.chars.first =~ /[^aeiou\W]/i
end

def binary_multiple_of_4? s
	# YOUR CODE HERE
	if s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil then return false end
	s.to_i % 4 === 0
end

#### Part 3

class BookInStock
# YOUR CODE HERE
	def initialize isbn, price

		#if isbn.empty?
		#	raise ArgumentError, "ISBN is empty"
		#elsif price <= 0
		#	raise ArgumentError, "Price is less than or equal to 0"
		#end
				
		raise ArgumentError, "ISBN is empty" if isbn.empty?
		raise ArgumentError, "ISBN is less than or equal to 0" if price <= 0

		@isbn = isbn
		@price = price

	end

	attr_accessor :isbn, :price

	def price_as_string
		return format("$%.2f", @price)
	end
end
