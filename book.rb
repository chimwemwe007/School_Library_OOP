class Book
  attr_accessor :title, :author
  attr_reader :rentals_list

  def initialize(title, author)
    @title = title
    @author = author
    @rentals_list = []
  end

  def add_rental(date, person, book)
    Rental.new(date, person, book)
  end
end
