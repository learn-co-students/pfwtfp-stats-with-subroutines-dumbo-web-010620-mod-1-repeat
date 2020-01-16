require 'pry'

def mean(set) 
    Float(set.reduce(:+)) / set.length
end

def median(set)
  #binding.pry
  sorted = set.sort
  if sorted.length.odd?
    #sorted[(sorted.length - 1)/2]
    sorted[set.length / 2 -1]
  else sorted.length.even?
    (sorted[set.length/2] + sorted[set.length/2 - 1])/2.to_f
  end
  #len = sorted.length
  #(sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0
end

def mode(set)
  counter = Hash.new(0)
  # this creates a new, empty hash with no keys, but makes all defalt values zero. it will be used to store
  # the information from the array, such that the keys will be each unique number from the array (IOW, if there
  # are two or more 4's in the array, there will just be one key that is a 4), and the value for each key will
  # be the number of times that integer appears in the array.
  set.each do |i|
    counter[i] += 1
  end
  # this interates throught the array, and for each element it creates a key for that integer (if it hasn't been
  # created already) and pushes a +1 to the value of that key. 
  mode_array = []
  #  empty array, to be filled with the most repeated number(s) from the array.
  # the array that is returned at the end of the method.
  counter.select do |k, v|
    if v == counter.values.max
      mode_array << k
    end
  end
  # this loop iterates through the counter array. for each key/value pair, it compares the value to
  # the high value in the array, and if the value it's comparing is equal to the high value, it
  # adds to the mode array the key associated with that value.
  mode_array.sort[0]
  # this returns the mode array (sorted)
  
end

def standard_deviation(set)
  Math.sqrt(mean(set.map{|n| (n - mean(set))**2}))
end
