def array_to_hash(array)
  # TODO: implement the method :)
  has = Hash.new
  if block_given?
    array.each_with_index do |key, index|
      has[yield(index)] = key
    end
  else
    array.each_with_index do |key, index|
      has[index.to_s] = key
    end
  end
  return has
end
