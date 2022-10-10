class Createbook
def initialize (book) 
    @book = book
end
def create_book 
    title, author = collect_books
    new_book = Book.new(title, author)
    add_to_collection(new_book)
end
def collect_books
    print 'Book Title:'
    title = gets.chomp
    print 'Book Author:'
    author = gets.chomp
    [title, author]
    
end
def add_to_collection(new_book)
    @book.push(new_book)
    puts "New book added successfully"
end
end 