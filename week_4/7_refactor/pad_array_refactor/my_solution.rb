# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge by myself.



# 1. First Person's solution I liked
#   
# 	What I learned from this solution:
# 	This code is basically getting the result the same way my code is. I like how they employ the dup functionality rather than clone. I'm not sure of the exact difference, but it seems like something I should know...
#
# Copy solution here:
class Array
	def pad!(minimum, pad_value = nil)
		if self.length < minimum then 
			fill_length = minimum - self.length
			self.fill(pad_value, self.length, fill_length  )
		else
			return self
		end
	end

	def pad(minimum, pad_value = nil)
		if self.length < minimum then 
			fill_length = minimum - self.length
			dup.fill(pad_value, self.length, fill_length  )
		else
			return self.dup
		end
	end
end


# 2. Second Person's solution I liked
#    What I learned from this solution
# 	 I like how simple and concise this code is. Very easy to follow along and understand what's going on here. 
#
# Copy solution here:

def pad(min_size, pad_value=nil)
	array=self.dup
    if (min_size - array.length) >0
        (min_size-array.length).times do array << pad_value end
    end
    return array
end

def pad!(min_size, pad_value=nil)
    if (min_size - self.length) >0
        (min_size - self.length).times do self << pad_value end
    end	
    return self
end


# 3. My original solution:
# As stated in my_solution for the pad array challenge, my partner and I refactored this on the go as we worked on it.


# 4. My refactored solution:

class Array
    def pad!(min,optional=nil)
        elements_to_add = min - self.count
        return self if elements_to_add <= 0
        self.concat Array.new(elements_to_add,optional)
        return self
	end
    
    def pad(min,optional=nil)
        new_array = self.clone
        elements_to_add = min - new_array.count
        return new_array if elements_to_add <= 0
        new_array.concat Array.new(elements_to_add,optional)
        return new_array
    end
end



# 5. Reflection
# I'm still learning a lot about writing code and the best way to handle a particular scenario, so refactoring doesn't come easy just yet. It is interesting to see how other people wrote out their code and to understand exactly what they did. I presume that refactoring will become much easier and more "second nature" once I have a lot more exposure and experience with the code and syntax. 