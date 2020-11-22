require 'pry-byebug'

def size_splitter(array, size)
  # TODO: Return an array of two arrays, the first containing
  #       words of length `size`, the second containing all the other words
  #       In addition to this split, each array should be *sorted*.
  arr = []
  arr1 = array.select { |word| word.size == size }
  arr << arr1.sort!
  arr2 = array.reject { |word| word.size == size }
  arr << arr2.sort!
  return arr
end

def block_splitter(array)
  # TODO: Return an array of two arrays, the first containing
  #       elements for which the given block yields true,
  #       the second containing all the other elements.
  #       No sort needed this time.
  arr = []
  arr << array.select { |word| yield(word) }
  arr << array.reject { |word| yield(word) }
  return arr
end
