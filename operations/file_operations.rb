require_relative '../classes/book'
require_relative '../classes/label'

class FileOperations
    attr_accessor :books, :labels

    def initialize(books, labels)
        @books = books
        @labels = labels
    end

    # Add a new book
    def add_new_book
        puts 'Add a new book'
        puts ''
        puts 'Enter the name of the book publisher'
        publisher = gets.chomp
        puts ''
        puts 'Enter cover state of book? Enter(good) or (bad)?'
        cover_state = gets.chomp
        puts ''
        print 'Is the book archived? Enter(true) or (false)'
        archived = gets.chomp
        puts ''
        puts 'Enter date of publishing the book? ("YYYY-MM-DD")'
        publish_date = gets.chomp
        added_book = Book.new(publisher, cover_state, publish_date, archived)
        books.push(added_book)
        puts 'New Book added Successfully'
        puts "#{books}"
    end

    #List all books
    def list_all_books
        if books.empty?
            puts ''
            puts 'No books added yet'
            puts 'Choose option 3 to add a new book'
            puts ''
        else
            puts 'Listing all books'
            books.each do |book|
                puts ''
                puts "id:#{book.id}"
                puts "publisher:#{book.publisher}"
                puts "cover_state:#{book.cover_state}"
                puts "archived:#{book.archived}"
                puts "published_date:#{book.publish_date}"
                puts ''
            end
        end
    end

    #Add a new label
    def add_new_label
        puts 'Add a new label'
        puts ''
        puts 'Enter the title of the new label'
        title = gets.chomp
        puts ''
        puts 'Enter color of the book'
        color = gets.chomp
        puts ''
        added_label = Label.new(title, color)
        labels.push(added_label)
        puts 'New Label added Successfully'
        puts "#{labels}"
    end

    #List all labels
    def list_all_labels
        puts 'Listing all labels'
        if labels.empty?
            puts 'No labels added yet'
            puts 'Choose option 4 to add a new label'
        else
            labels.each do |label|
                puts "id:#{label.id}"
                puts "title:#{label.title}"
                puts "color:#{label.color}"
                puts ''
            end
        end
    end
end