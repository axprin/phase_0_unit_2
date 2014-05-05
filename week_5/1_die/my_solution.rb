# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: Number of sides on die
# Output: Random number between 1 and the number of sides on die
# Steps:
# 1. Define class Die
# 2. Within class Die, define method initialize, which takes in the parameter sides. If sides is less than 1, return arguement error, if greater than one, define instance variable @sides.
# 3. Within class Die, define method sides, which is just the instance variable @sides (from step 2).
# 4. Within class Die, define method roll, which returns a random number between 1 and the number of sides passed into method initialize


# 3. Initial Solution

# class Die
#   def initialize(sides)
#     raise ArgumentError.new("Please enter number of sides") unless sides >= 1
#     @sides = sides 
#   end
 
#   def sides
#     @sides
#   end
 
#   def roll
#     rand(sides) + 1
#   end
# end

# 4. Refactored Solution

class Die
  def initialize(sides)
    raise ArgumentError.new("Please enter number of sides") unless sides > 1
    @sides = sides 
  end
 
  def sides
    @sides
  end
 
  def roll
    rand(@sides) + 1
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE

Test1 = Die.new(5)
puts "Test 1, Sides >1: #{Test1.sides == 5}"

print "Test 2, Returns Error for -1 sides: "
begin
  Test2 = Die.new(-1)
rescue
  puts "true"
else
  puts "false"
end

Test3 = Die.new(15)
puts "Test 3, random number: #{Test3.roll.between?(1, 15)}"




# 5. Reflection 
# I thought this exercise was a really good dive into classes within Ruby. I had some difficulty at first, but quickly caught on. My biggest obstacle in this challenge was writing driver code in the instance of the code throwing the arguement error. I played around with this for a while, and exhausted myself out after an hour or so of googling unsuccessfully. 