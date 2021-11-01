require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end






# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  newArray = []
  spicy_foods.map{|food| newArray << food[:name]}
  newArray
end

# get_names(spicy_foods)
# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  spicyfood = spicy_foods.filter{|food| food[:heat_level]>5}
  spicyfood
end

# spiciest_foods(spicy_foods)

# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  newArray = spicy_foods.each{
    |food| puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{'🌶'*food[:heat_level]}"
  }
end

print_spicy_foods(spicy_foods)



# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicyfood = spicy_foods.filter{|food| food[:cuisine] == cuisine}
  h = Hash[*spicyfood] 
  return h
  # your code here
end



# # Given an array of spicy foods, **return an array of hashes** 
# # sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  newArray = spicy_foods.sort do |food1, food2|
      food1[:heat_level] <=> food2[:heat_level]
  end
  newArray
end


# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!




def print_spiciest_foods(spicy_foods)
  hotones = spiciest_foods(spicy_foods)
  answer = print_spicy_foods(hotones)
  answer 
end



# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  total = spicy_foods.sum do |arrayElement|
    arrayElement[:heat_level]
  end
  divisor = spicy_foods.length
  answer = total/divisor
  answer
end


