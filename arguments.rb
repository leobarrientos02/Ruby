#By default, num will have the value of 1
def repeat(message, num=1)
  message * num
end

p repeat("hi")
p repeat('hi', 3)


def greet(person_1, person_2=nil)
    if person_2.nil?
        p "Hey " + person_1
    else
        p "Hey " + person_1 + " and " + person_2
    end
end

greet("Chao") # => "Hey Chao"
greet("Chao", "Arittro") # => "Hey Chao and Arittro"

#Option Hashes: method that accepts a hash as an argument
def modify_string(str, options={"upper"=>false, "repeats"=>1})
    str.upcase! if options["upper"]
    p str * options["repeats"]
end

modify_string("bye")   # => "bye"
modify_string("bye", "upper"=>true, "repeats"=>3)   # => "BYEBYEBYE"
