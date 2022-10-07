class Book
  attr_accessor :title, :author
  attr_reader :rentals_list

  def initialize(title, author)
    @title = title
    @author = author
    @rentals_list = []
  end

  def add_rental(rental)
    Rental.new(date, rental.person, self)
  end
end
