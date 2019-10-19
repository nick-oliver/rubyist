class Ticket
  def initialize(venue,date)
    @venue = venue
    @date = date
  end
  def price=(amount)
    @price = amount
  end
  def price
    @price
  end
  def discount=(percent)
    @discount = percent
  end
  def discount
    @discount
  end
  # testing still - this is probably wrong
  def total_cost (calculation)
    @total_cost = ticket.price.to_i * (100 - ticket.discount.to_i) / 100"
  end
  # End of experimenting
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
ticket = Ticket.new("Town Hall", "2013-11-12")
ticket.price = 100.00
puts "The ticket costs $#{"%.2f" % ticket.price}."
ticket.discount = 15.00
puts "The discount on this ticket is #{"%.2f" % ticket.discount}%."
puts "The ticket for #{ticket.venue} has been discounted #{ticket.discount}%."
# last line - experimenting
puts "The final cost for the ticket is #{ticket.price.to_i} * (100 - #{ticket.discount.to_i}) / 100)"
# last line - experimenting


# ticket.price = 72.50
# puts "Whoops -- it just went up. It now costs $#{"%.2f" % ticket.price}."
