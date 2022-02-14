# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.sum()
end

def max_2_sum arr
  # YOUR CODE HERE

  if arr.length() == 0
    return 0 
  end
  if arr.length() == 1
    return arr[0]
  end
  max_num_1,max_num_2 = arr.sort[-1],arr.sort[-2]
  max_sum = max_num_1 + max_num_2
  return max_sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  sum_map = {}
  for i in 0..(arr.length-1)
    if sum_map.key?(arr[i]) 
      return true
    end
  sum_map[n-arr[i]] = 0
  end
  return false
end

# # Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name.to_s
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0 
    return false
  end
  if s[0] =~ /^[[:alpha:]]$/
    if !['A','I','E','O','U'].include?(s[0].upcase)
      return true
    end
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.count('01') != s.size or s.size == 0 
    return false
  end
  
  binary = s.to_i(2)
  if binary%4 == 0
    return true
  else
    return false
  end
  
end

# # Part 3

class BookInStock
# YOUR CODE HERE
    attr_accessor :price, :isbn
  
  def initialize(isbn,price)
    if isbn.size ==0 or price <= 0
      raise ArgumentError, "Input not correct"
    end
    @price = price
    @isbn = isbn
  end
  
  def price_as_string
		return "$%.2f"%@price.to_f()
	end
  
end
