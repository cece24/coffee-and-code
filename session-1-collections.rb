# Level 1
movie_array = [
  ['Alfonso Cuaron', 'Gravity'],
  ['Spike Jonze', 'Her'],
  ['Martin Scorsese', 'The Wolf of Wall Street']
]

# Solution 1
def array_to_hash(array)
  new_hash = array.to_h
end

movie_hash = array_to_hash(movie_array)

puts movie_hash

# Solution 2
def array_to_hash_2(array)
  new_hash = {}

  array.each do |movie|
    new_hash[movie[0]] = movie[1]
  end

  return new_hash
end

movie_hash_2 = array_to_hash_2(movie_array)

puts movie_hash_2

# Level 2
pets = [
  {
    type: "dog",
    number: 12
  },
  {
    type: "cat",
    number: 15
  },
  {
    type: "fish",
    number: 23
  },
]

def count_pets(pet_array)
  total_pets = 0

  pet_array.each do |pet|
    total_pets += pet[:number]
  end

  return total_pets
end

puts "The total number of pets is #{ count_pets(pets) }"

# Level 3
# Reduce both methods above to 1 line
puts "Level 3 Solutions"

movie_hash = movie_array.to_h
puts movie_hash

total_pets = pets.reduce(0) do |total, pet| total + pet[:number] end
puts total_pets
