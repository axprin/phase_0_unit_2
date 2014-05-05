# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: anser
# Output: low, high or correct
# Steps:


# 3. Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @solved = false
#   end
  
#   def guess(guess)
#   	if guess > @answer
#   		@solved = false
#   		return :high
#   	elsif guess < @answer
#   		@solved = false
#   		return :low
#   	else 
#   		@solved = true
#   		return :correct
  		
#   	end				
#   end

#   def solved?
#   	return @solved
#   end
# end



# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end
  
  def guess(guess)
  	if guess > @answer
  		@solved = false
  		return :high
  	elsif guess < @answer
  		@solved = false
  		return :low
  	else 
  		@solved = true
  		return :correct
  	end				
  end

  def solved?
  	return @solved
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE

test_game = GuessingGame.new(12)
puts "Test 1 - Guess too high: #{test_game.guess(17) == :high}" # => true
puts "Test 2 - Guess too low: #{test_game.guess(8) == :low}" # => true
puts "Test 3 - Call game.solved: #{test_game.solved? == false}" # => false
puts "Test 4 - Guess correctly: #{test_game.guess(12) == :correct}" # => true
puts "Test 5 - Call game.solved: #{test_game.solved? == true}" # => true


# 5. Reflection 
# I found this challenge to be pretty straight forward. Luckily, I did this activity last in this week's work, so I got a pretty good amount of practice with classes before I worked on it. 
