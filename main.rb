require_relative 'operations/file_operations'
require 'json'

def load_from_json(file_name)
  if File.exist?(file_name)
    json_data = File.read(file_name)
    JSON.parse(json_data)
  else
    []
  end
end

load_books_data_from_file = load_from_json('books.json')
load_labels_data_from_file = load_from_json('label.json')

books = load_books_data_from_file
label = load_labels_data_from_file

book_label_operations = FileOperations.new(books, label)

def options
  puts '1. List all books'
  puts '2. List all labels'
  puts '3. Add a new book'
  puts '4. Add a new label'
  puts '5. Quit'
end

def exit_application
  puts 'Exiting Application... Thank you!'
  puts '...'
end

loop do
  puts 'Enter your options...'
options
choice = gets.chomp.to_i

case choice
when 1
  book_label_operations.list_all_books
when 2
  book_label_operations.list_all_labels
when 3
  book_label_operations.add_new_book
when 4
  book_label_operations.add_new_label
when 5
  exit_application
  break
else
  puts 'Invalid input, try again later.'
end

end