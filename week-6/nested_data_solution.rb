# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

# REFLECTION
#What are some general rules you can apply to nested arrays?
  # if you have a hash nested in an array you use the hash syntax when calling itself.

#What are some ways you can iterate over nested arrays?
  # You do it the same way that you would iterate over a regular array, but this time you may need extra layers to get through the arrays inside arrays. Like in Release 3 we find out if each |element| in the array is an array and if it is, we iterate through those.

#Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
  # We ended up using the map/collect method, we used this to take the elements we were changing and then put them into an array in this case we used map! to put them into the original array. We also used kind_of? to figure out if an the object inside the array was another array or not.


array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:2
# ============================================================
# attempt1: puts array[1][2][0]
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 1
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
 if element.kind_of?(Array)
   element.map! {|inner| inner+5 }
 else
   element + 5
 end
end
p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |element|
if element.kind_of?(Array)
  element.map! do |inner|
    if inner.kind_of?(Array)
      inner.map! {|inner| inner << "ly"}
    else
      inner << "ly"
    end
  end
 else
   element << "ly"
 end
end
p startup_names

##-- Try 2 --- #
# startup_names.map! do |element|
#   if element.kind_of?(Array)
#     element.map! do |inner|
#       if inner.kind_of?(Array)
#         inner.map! {|inner2| inner2 << "ly"}
#       end
#     end
#   end
# if element.kind_of?(Array)
#   element.map! {|inner| inner << "ly"}
# else
#   element << "ly"
# end
# end
# puts startup_names

##-- Try 1 ---#
#   if element.kind_of?(Array)
#     element.map! {|inner| inner << "ly"}
#   else
#     element << "ly"
#   end
# end
# p startup_names
