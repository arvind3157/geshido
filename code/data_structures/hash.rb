# Create a new hash

person = Hash.new

# add key-value pair

person["name"] = "Arvind"
person["age"] = 30
person["gender"] = "male"

# access the values using keys

# puts person["name"]

# iterate to the hash values

person.each do |key, value|
    puts "#{key}:#{value}"
end