# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge with Spencer Olson.



# 1. First Person's (zpfled) solution I liked
#    What I learned from this solution
# Copy solution here:
class Array

def pad(new_length, value = nil)
	p self
	p new_length
	if self.length < new_length
		return self
	end
	new_array = self.dup
	(new_length - self.length).times { new_array.push(value) }
	return new_array
end

def pad!(new_length, value = nil)
	p self
	p new_length
	if self.length < new_length
		return self
	end
	(new_length - self.length).times { self.push(value) }
	return self
end

end


# 2. Second Person's (scottjason) solution I liked
#    What I learned from this solution
# Copy solution here:

class Array
	def pad (size, value = nil)
	new_arr = []
	diff = size - self.length
	padded_arr = Array.new(diff, value)

		self.each { |x| new_arr << x }
		return new_arr if size == 0
			if diff <= 0
				return new_arr
			else
			size > self.length
				return padded_arr + new_arr
			end
		end

		def pad! (size, value = nil)
		diff = size - self.length
		return self if size == 0

			if diff <= 0
				return self
			else
			self.concat(padded_arr)
		end 
	end
end



# 3. My original solution:



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