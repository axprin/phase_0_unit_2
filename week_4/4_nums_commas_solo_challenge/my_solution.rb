# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? an integer
# What is the output? (i.e. What should the code return?) a string, if the string is greater than 3 digits, there should be a comma every 3 digits from the right
# What are the steps needed to solve the problem?
# 1. define separate_comma that takes 1 argument
# 2. convert integer to string
# 3. check if integer is greater than 3 digits
# 4. if string is greater than three digits, add a comma every three digits from the right
# 5. return updated string 


# 2. Initial Solution

def separate_comma(number)
    if number.to_s.length < 3
    puts number
    else number.to_s.length >= 4
    puts number.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
    end
end


# 3. Refactored Solution

def separate_comma(number)
    puts number.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
end

# 4. Reflection 
# I wasted SO much time on this challenge trying to figure out how to count from the right side of a string in Ruby before realizing you can simply reverse the string. I felt like a complete idiot once I figured that out. Also, I realized in the refactoring, that I didn't need an if/else statement, which worked out conveniently while I was testing this code. Despite the fact that much code is not written, this challenge took me a pretty long while. Looking back at it though, the solution seems pretty simple once to read through the code: you're converting the number to a string, reversing the order, slicing every 3 digits, joining again with commas and reversing back. 