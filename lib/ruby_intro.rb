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
  return "Hello, " + name;
end

def starts_with_consonant? s
  #first checks if the first letter is a consonant: \A[aeiouy]
  # then, checks for empty strings: ^$
  # finally, checks if thr first letter is a non-word characters: \A\W
  # 'i' in the end makes the expression case insensitive
  return (s =~ /\A[aeiouy]|^$|\A\W/i)?false:true;
end

def binary_multiple_of_4? s
  # first, checks if the string is empty or contains letters: invalid binary
  # any binary number that is a multiple of 4 should have 00 LSM.
  # So it doesn't matter how many 0-1 comes at the left: [0-1]{0,}
  # we need exactly one zero at the right-most bit and the char before that should be wither nothing or zero: 0?0$
  return (s =~ /^$|\D/)?false:((s =~ /[0-1]{0,}0?0$/)?true:false);
end

# Part 3

# class BookInStock
# # YOUR CODE HERE
# end