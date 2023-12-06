require_relative 'classes/item'

# Helper method to display options
def display_options
  puts 'Options:'
  puts '1. Create new item'
  puts '2. Archive an item'
  puts '3. Quit'
end

# Main app loop
loop do
  puts 'Welcome to the Item Manager App!'
  display_options

  print 'Please select an option: '
  choice = gets.chomp.strip.to_i

  case choice
  when 1
    puts 'Creating a new item...'
    # Logic to create a new item
    # You can implement this part as per your requirement
  when 2
    puts 'Archiving an item...'
    # Logic to archive an item
    # You can implement this part as per your requirement
  when 3
    puts 'Exiting the app. Goodbye!'
    break
  else
    puts 'Invalid option. Please choose a valid option.'
  end
end
