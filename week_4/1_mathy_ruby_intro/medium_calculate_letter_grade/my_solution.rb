# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with Spencer Olson.

# 1. Pseudocode

# What is the input? an array with grades
# What is the output? (i.e. What should the code return?) a string containing the letter grade
# What are the steps needed to solve the problem? define the method get_grade, allow it to take one argument (an array of grades), average the grades in the array and use a case statement to return the ltter grade. 


# 2. Initial Solution

def get_grade(test_scores)
    sum = 0.00
    test_scores.each {|score| sum += score}
    avg = sum / test_scores.length
    case avg
    when 90..100
        return "A"
    when 80...90
        return "B" 
    when 70...80
        return "C"
    when 60...70
        return "D"
    else
        return "F"
    end
end



# 3. Refactored Solution
def get_grade(test_scores)
    sum = 0.00
    test_scores.each {|score| sum += score}
    case sum / test_scores.length
    when 90..100
        return "A"
    when 80...90
        return "B" 
    when 70...80
        return "C"
    when 60...70
        return "D"
    else
        return "F"
    end
end


# 4. Reflection 
# I worked on this challenge with Spencer and we got through it really quickly. The tak at hand was pretty simple, but it was fun to work alongside someone else and get this knocked out quickly. One thing that we experienced a little trouble with was setting up the when clauses of the case statement. After a little bit of research, we realized we could use .. only on the A case, and ... on the rest, because 2 periods appears to make the second number inclusive. 