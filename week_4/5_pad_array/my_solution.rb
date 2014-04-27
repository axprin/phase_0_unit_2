# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with Spencer Olson.

# 1. Pseudocode

# What is the input? an array, with min value and optional string to replace nil
# What is the output? (i.e. What should the code return?) for pad!, an overwritten array, based on parameters passed in, for pad, just stored vales
# What are the steps needed to solve the problem? define method with 1 reqired parameter and one optional, calclate how many elements we will need to add to existing array, if none, return original array, if we have to add extra elements, how many and call them nil or optional input.


# 2. Initial Solution

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




# 3. Refactored Solution
# this was constantly refactored on the go, as I was pairing for this challenge. 


# 4. Reflection 
# For this challenge, I started solo and was able to figure out a lot of the challenge on my own, before pairing with Spencer and completing it. A big issue that Spencer was able to help out with was the replacing of nil with the optional second parameter. Luckily, that was a really easy fix, just by adding that to the new array we are combing with the existing array. 

