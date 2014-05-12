# U2.W6: Drawer Debugger


# I worked on this challenge by myself.


# 2. Original Code

class Drawer

	attr_reader :contents

	# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
	end

	def open
		self.view_contents
		@open = true
	end

	def close
		@open = false
	end 

	def add_item item
		item = Silverware.new(item) if item.is_a? String

		@contents.push Silverware.new("#{item.type}")
		return "#{item.type} added to drawer."
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing?
		@contents.delete(item)
		return item
	end

	def dump  # what should this method return?
		puts "Your drawer is empty."
		@contents = []
		@contents
	end

	def view_contents
		if @contents.empty?
			puts "(nothing)"
		else
			@contents.each {|silverware| puts "- " + silverware.type }
		end
		@contents
	end

end

class Silverware

	attr_reader :type

# Are there any more methods needed in this class?

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{@type}"
		@clean = false
	end

	def clean
		@clean = true
	end

	def clean?
		@clean ? true : false
	end
end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?

silverware_drawer.add_item("fork")
fork = silverware_drawer.remove_item #add some puts statements to help you trace through the code...
fork.eat

silverware_drawer.open

#BONUS SECTION
puts fork.clean?

# DRIVER TESTS GO BELOW THIS LINE

test_drawer = Drawer.new
knife = Silverware.new("knife")
fork = Silverware.new("fork")
spoon = Silverware.new("spoon")

assert { knife.type == "knife" }
assert { test_drawer.open == true }
assert { test_drawer.add_item(knife) == "knife added to drawer." }

assert { test_drawer.dump == [] }
assert do
	test_drawer.add_item(knife)
	test_drawer.add_item(fork)
	test_drawer.add_item(spoon)

	test_drawer.view_contents.length == 3
end

assert { fork.eat; fork.clean? == false }





# 5. Reflection 