class Ticket
  def initialize(venue,date)
    @venue = venue
    @date = date
  end
  def set_price(amount)
    @price = amount
  end
  def price
    @price
  end

  def venue
    @venue
  end
  def date
    @date
  end
  def price
    @price
  end
end
th = Ticket.new("Town Hall", "2013-11-12", 63.00)
cc = Ticket.new("Convention Center", "2014-12-13", 91.00)
puts "We've created two tickets."
puts "The first is for a #{th.venue} event on #{th.date}."
puts "The second is for an event on #{cc.date} at #{cc.venue}."
