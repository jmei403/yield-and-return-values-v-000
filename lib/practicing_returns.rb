require 'pry'

def hello(array)
  collection = []
  i = 0
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end

binding.pry
hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
