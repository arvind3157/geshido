class Person
    # attr_accessor defines getter and setter methods for instance variables
    attr_accessor :name, :age

    def initialize(name, age)
        @name=name
        @age=age
    end

    # this is called method as it's associated with class
    def greet()
        puts "Hello, #{name}"
    end
end

person = Person.new("Arvind", 35)

puts person.name  # get name
puts person.age   # get age

person.greet

# this is called function as it NOT related to a class
def greet()
    puts "Hello"
end

greet()