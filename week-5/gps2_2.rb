# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # define a method that takes an argument
  # push list of items into hash: KEYS
  # set default quantity: VALUES
  # print the list to the console [can you use one of your other methods here?]
# output: hash [what data type goes here, array or hash?]

# def create_list(item)
#   list_array = item.split(" ")
#   list_hash = Hash.new(0)
#   list_array.each {|x| list_hash[x] += 1 }
#   return list_hash
# end

def create_list(item)
  item.split(" ").each_with_object(Hash.new(0)) do |item, list|
    list[item] += 1
  end
end




# def create_list(item)
#   list_array = item.split(" ")
#   list_hash = Hash.new(0)
#   list_array.each {|x| list_hash[x] += 1}
#   return list_hash
# end


lauras_list = create_list("chicken steak icecream")
seans_list = create_list("apple(s) raisin(s)")

# Method that takes 2 args (k, v)
# input: k = item & v = #of item into list_hash
# steps: def method, add arguments to list_hash
# output: updated list_hash with new input

def add_item(list, k, v)
  list[k] += v
end
   add_item(seans_list, "broccoli", 4)

# Method to remove an item from the list
# input: list, k
# steps: def method, add arg to method and - from list
# output: updated list

def remove_item(list, k)
  list.delete(k)
end
remove_item(seans_list, "raisins")

# Method to update the quantity of an item
# input: list, k, v
# steps:def method, add arg to method and +or- from list
# output: updated quantity on list

def update_quantity(list,k,v)
  list[k] = v
end
update_quantity(seans_list, "broccoli", 1 )


# Method to print a list and make it look pretty
# input: list
# steps: def pretty_list take arg list
# output:
def pretty_list(list)
  puts "Your list(s):"
  list.each do |key, value|
    puts "#{value} #{key}"
  end
end
  pretty_list(seans_list)