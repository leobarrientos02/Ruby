# Language: Ruby, Level: Level 3
def erroneous_addition(x)
  if x > 99999
    print "Luckily I'm a valid statement!";
  else
    print "The Ruby interpreter is about to be a complainy-pants!" + x;
  end
end

erroneous_addition(Float::INFINITY);
