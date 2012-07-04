require 'restaurant'
class Guide
  
  def initialize(path=nil)
    # locate the restaurant text file at path
    Restaurant.filepath = path
    if Restaurant.file_usable?
      puts "Found restaurant file"
    # or create a new file
  elsif Restaurant.create_file
      puts "Created restaurant file"
    # exit if create fails
  else
    puts "Exiting.\n\n"
    exit!
  end
end
  
  def launch!
    introduction
    # action loop
    loop do
    # what do you want to do? (list, find, add, quit)
    print "> "
    user_response = gets.chomp
    # do that action
    rsult = do_action(user_response)
    do_action(user_response)
    # repeat until user quits
    break is result == :quit
  end
    conclusion
  end
  
  def instruction
    puts "\n\n<<< Welcome to the Food Finder >>>\n\n"
    puts "This is an interactive guide to help you find the food you are craving.\n\n"
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
  