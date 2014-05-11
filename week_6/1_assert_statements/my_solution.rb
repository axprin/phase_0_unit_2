# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# It looks like it's raising that assert message ("Assertion failed") in the test, when name == billybob, because name is already defined as bettysue


# 3. Copy your selected challenge here
# week 4 solo challenge

def separate_comma(number)
    newnumber = number.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
    puts newnumber
end

# 4. Convert your driver test code from that challenge into Assert Statements


def assert
    raise "Assertion Failed!" unless yield
end

assert { separate_comma(1234567) == "1,234,567".to_i }


# 5. Reflection
