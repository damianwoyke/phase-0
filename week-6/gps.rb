# Your Names
# 1)Andrew Vathanakamsang
# 2)Sean Norton

# We spent [2] hours on this challenge.

# Bakery Serving Size portion calculator.


def serving_size_calc(item_to_make, num_of_ingredients)
menu = {"cookie" => 1, "cake" => 5, "pie" => 7}

unless menu.has_key?(item_to_make)
raise ArgumentError.new("#{item_to_make} is not a valid input")
end

serving_size = menu[item_to_make]
leftover = num_of_ingredients % serving_size

if num_of_ingredients % serving_size == 0
return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
 else
    # p leftover
    extra_items = Hash.new
    extra_items = menu.select{|k,v| v <= leftover}.keys.flatten[0]

return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{leftover} leftover ingredients. Suggested baking items: #{leftover} #{extra_items}"
end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)


# Reflection
# What did you learn about making code readable by working on this challenge?
# The parts of code that were harder for me to read were the sameones that need refactored and made more readable.\

# Did you learn any new methods? What did you learn about them?
# no new methods

# What did you learn about accessing data in hashes?
#it's more simple than I orignally thought

# What concepts were solidified when working through this challenge?
#.has_key?
