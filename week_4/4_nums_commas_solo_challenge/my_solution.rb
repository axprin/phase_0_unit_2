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