# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge with: Spencer Olson.

# 2. Pseudocode

# Input: an array
# Output: .sides returns the length of the array, .roll returns the value of a random element in the array. 
# Steps: 
# 1. define class die, 
# 2. within class die define method intialize, which takes 1 parameter (an array), if none is passed in (or array is empty), return ArgumentError. If array is not empty, set instance variable @labels equal to array passed in
# 3. within class Die, define method sides, which returns length of @labels
# 4. within class Die, define method roll, which returns random element of @labels (using .sample method)


# 3. Initial Solution

# class Die
#   def initialize(labels)
#   	raise ArgumentError, "Error, you didn't pass anything in." if labels.empty?
#   	@labels = labels
#   end

#   def sides
#   	@labels.length
#   end

#   def roll
#   	@labels.sample
#   end
# end



# 4. Refactored Solution

class Die
  def initialize(labels)
  	raise ArgumentError, "Error, you didn't pass anything in." if labels.empty?
  	@labels = labels
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels.sample
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE

print "Test 1, Returns Error for empty array: "
begin
  Test_die1 = Die.new()
rescue
  puts "true"
else
  puts "false"
end

Test_die2 = Die.new(["Andy",245,"TEST",4])
puts "Test 2, .sides returns number of sides: #{Test_die2.sides == 4}"

puts "Test 3, .roll returns every possible element of lables: #{["Andy",245,"TEST",4].include? Test_die2.roll}"


# 5. Reflection 
# During this challenge, we learned how to write test code for arguement errors, which proved to be an issue in the first challenge of this week for me. 
