# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  s = 0
  arr.each do |x|
    s+=x
  end
  return s
end

def max_2_sum arr
  if arr.length == 0
    return 0
    elsif arr.length == 1
    return arr[0]
  else
    sss=arr.sort
    return sss[-1]+sss[-2]
  end
  # YOUR CODE HERE
end

def sum_to_n? arr, n
  # YOUR CODE HERE
#=begin
  (0...arr.length).each do |x|
    (x+1...arr.length).each do |y|
        if arr[x]+arr[y]==n 
          return true
        end
    end
  end
#=end
  return false

end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return (s =~ /^[bcdfghjklmnpqrstvwxyz].*/i)
end
  
def binary_multiple_of_4? s
  # YOUR CODE HERE
return s =~ /^(0|1)*00$/ || s=='0'
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn,price=Float)
    @isbn=isbn
    @price=price
    raise ArgumentError if isbn.length==0 || price <=0
  end
  def price_as_string 
    return "$%.2f"%price
  end
    
# YOUR CODE HERE
end
