# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  menu = {"cookie" => 1, "cake" => 5, "pie" => 7}

  unless menu.has_key?(item_to_make)
  raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = menu[item_to_make]
  leftover = num_of_ingredients - serving_size

  if num_of_ingredients % serving_size == 0
  return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
   else
      bake = []
      bake = menu.select{|k,v| v < leftover}
        test1 = bake.keys.flatten
        p test1[0]
  return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{leftover} leftover ingredients. Suggested baking items: #{test1[0]} TODO: MAKE THIS FEATURE"
  end
end

# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

# Reflection
