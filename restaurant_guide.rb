#!/usr/bin/env ruby
# ^ you forgot to add the hashbang. 

# you'll want to make this file executable with:
# chmod a+x restaurant_guide.rb

# also, style and readability. keep it in your mind...

require 'restaurant' # added a new line after this require statement to improve readability

class Guide
  
  def initialize(path=nil)
    # locate the restaurant text file at path
    Restaurant.filepath = path
    if Restaurant.file_usable?
      puts "Found restaurant file"
    # or create a new file
    elsif Restaurant.create_file # this should be indented correctly
      puts "Created restaurant file"
    # exit if create fails
    else # this should be indented correctly
      puts "Exiting.\n\n"  # this should be indented correctly
      exit!  # this should be indented correctly
    end  # this should be indented correctly
  end  # this should be indented correctly
  
  def launch!
    introduction
    # action loop
    loop do # this should be indented correctly
      # what do you want to do? (list, find, add, quit)
      print "> "
      user_response = gets.chomp
      # do that action
      result = do_action(user_response) # you had rsult, should be result
      do_action(user_response)
      # repeat until user quits
      break is result == :quit
    end
    conclusion
  end
  
  def instruction
    puts "\n\n<<< Welcome to the Food Finder >>>\n\n"
    puts "This is an interactive guide to help you find the food you are craving.\n\n"
  end # you didnt 'end' this 'instruction' method

  def do_action(action)
    case action
    when 'list'
      puts "Listing."
    when 'find'
      puts "Finding."
    when 'add'
      puts "Adding."
    when 'quit'
      return :quit
    end
  end # you didnt 'end' this 'do_action' method

end # you didnt 'end' this 'Guide' class

