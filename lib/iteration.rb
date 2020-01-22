def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  toppings = []
  pair_index = 0
  while pair_index < src.count do
      toppings << "I love #{src[pair_index].first.to_s} and #{src[pair_index].last.to_s} on my pizza"
    pair_index += 1
  end
  toppings
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  greater_numbers = []
  pair_index = 0
  while pair_index < src.count do
    if src[pair_index].first > src[pair_index].last
      greater_numbers << src[pair_index].first
    else
      greater_numbers << src[pair_index].last
    end
    pair_index += 1
  end
  greater_numbers
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  even_pairs_sum = 0
  pair_index = 0
  while pair_index < src.count do
    if src[pair_index].first % 2 == 0 && src[pair_index].last % 2 == 0
      even_pairs_sum += src[pair_index].first + src[pair_index].last
    end
    pair_index += 1
  end
  even_pairs_sum
end
