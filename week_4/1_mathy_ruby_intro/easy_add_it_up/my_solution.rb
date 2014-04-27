# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode
# a. Define method total, takes array of numbers and returns their sum
# b. Define method sentence_maker, takes array of strings or numbers and returns each element into a sentence
# What is the input? An array, on both accounts
# What is the output? (i.e. What should the code return?) for a, the total of all numbers in the array, for b, a sentence with the first letter capitalized and a period at the end
# What are the steps needed to solve the problem? a. define a method, calculate the sum, print that number. B. define a method, capitalize first letter, put a period at the end, print the sentence


# 2. Initial Solution

def total(array)
    sum = 0
    array.each {|x| sum += x }
    return sum
end

def sentence_maker(array)
    string = array.join(" ")
	return string.capitalize + "."
end


# 3. Refactored Solution

def sentence_maker(array)
    return array.join(" ").capitalize + "."
end

# 4. Reflection 
#I found this challenge to be a little more difficult than I thought it was going to be. After spending a solid month off of Ruby, while diving deep into HMTL, CSS and JavaScript, I forgot a lot of the syntax and structure of Ruby. I had to spend a pretty decent amount of time reacquainting myself with everything, which I found to be enriching and very helpful. In retrospect, I probably should have choosen more difficult exercises for this first challenge, but I think with the rest of the work I did this week, I made up for that.