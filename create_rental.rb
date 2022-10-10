class Createrental
    def initialize (rentals)

        @books = rental [:books]
        @rental = rental [persons]
        @person = rental[:rentals]
    end

    def create_rental
        if @books.length.positive? && @persons.length.positive?
        puts 'Select a book from the following list by number'
        @books.each_with_index do |book, index|
            puts "#{index}). Title: '#{book.title}' by Author: #{book.author}"
        end
        book_index = gets.chomp.to_i
    s
        puts 'Select a person from the following list by number'
        @persons.each_with_index do |person, index|
            puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
        end
        person_index = gets.chomp.to_i
    
        puts 'Enter date: '
        date = gets.chomp
    
        rental = Rental.new(date, @persons[person_index], @books[book_index])
        @rentals << rental
        puts
        puts 'Rental created successfully'
        else
        # if no books or persons exist
        puts
        puts 'No books or persons found. Please create at least one book and person first.'
        end
        puts
        sleep(2)
    end
    
    # list all rentals for a given person id
    def list_rentals
        puts 'Enter person ID: '
        person_id = gets.chomp.to_i
    
        rentals = @rentals.filter { |rental| rental.person.id == person_id }
        puts
        if rentals.length.positive?
        puts 'Rentals:'
        rentals.each_with_index do |rental, index|
            puts "#{index}). #{rental.person.name} rented #{rental.book.title} by #{rental.book.author} on #{rental.date}."
        end
        else
        # if  there are no no rentals
        puts 'No rentals found for the given person ID'
        end
        sleep(2)
        puts
    end
    end

