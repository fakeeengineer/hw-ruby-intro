# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  a = arr.sort
  if arr.length == 1
  	a[0]
  else
  	a[arr.length - 1].to_i + a[arr.length - 2].to_i
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.each do |i|
  	arr.delete i
  	if arr.include?(n - i)
  		return true
  	end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty? || ('a'..'z').include?(s[0].downcase) == false
  	return false
  end
  arr = ['a', 'e', 'i', 'o', 'u']
  !arr.include?(s[0].downcase)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s == ''
  s.each_char do |i|
  	if ('a'..'z').include?(i.downcase) == true
  		return false
  	end
  end
  (s.to_i(2) % 4 == 0) ? true : false
end

# Part 3

class BookInStock
# YOUR CODE HERE
	attr_accessor :isbn, :price
	def initialize isbn, price
		raise ArgumentError if isbn == '' || price <= 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		format('$%.2f', price)
	end
end
