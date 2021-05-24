#symbols

str = 'hello'
sym = :hello

#symbols are imutable cant change
# strings are mutable - can change
p str.length
p sym.length

p str[1]
p sym[1]

#false because string is different from a symbol
p str == sym

p "hello".object_id

game = { :name=>"GTA5", :type=>"simulator"}
p game

game2 = { name:"Ufc4", type:"fight"}
p game2
p game2[:name]
