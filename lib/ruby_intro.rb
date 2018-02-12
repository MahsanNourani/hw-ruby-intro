# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  @sum = 0;
  (0...arr.length).each do |i|
    @sum += arr[i];
  end
  #returns 0 if the array was empty.
  return @sum;
end


def max_2_sum arr
  #sort descending - if array empty, it is still empty after sort.
  arr.sort! {|x, y| y <=> x};
  #check the conditions 0 or 1 elemnt arrays using conditional operators.
  return ((arr[0]==nil)?0:arr[0]) + ((arr[1]==nil)?0:arr[1]);
end

def sum_to_n? arr, n
  (0...arr.length).each do |i|
    (0...arr.length).each do |j|
      if (i==j) 
        next;
      end
      if (arr[i] + arr[j] == n)
        return true
      end
    end
  end
  return false;
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

# class BookInStock
# # YOUR CODE HERE
# end