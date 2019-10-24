require 'date'

class Ticket
  def initialize(venue)
    @venue = venue
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
  def venue
    @venue
  end
  def date=(date)
    @date = date
    if date "[/\d{4}-\d{1,2}-\d{1,2}]"
      puts "The ticket date is #{date}"
    else "Please submit the date in the format 'yyyy-mm-dd'"
    end
  end
  def date
    @date
  end
  def price
    @price
  end
end
Ticket = Ticket.new("Town Hall")
print "Please enter todays date: "
date = gets.to_s
puts "The ticket date is #{date}"
# Ticket.date = "2013-11-12"
Ticket.price = 100.00
puts "The ticket costs $#{"%.2f" % Ticket.price}."
Ticket.discount = 15
calculation = Ticket.price.to_i * (100 - Ticket.discount.to_i) / 100
# puts "The discount on this ticket is #{"%.2f" % Ticket.discount}%."
puts "The ticket for #{Ticket.venue} has been discounted #{Ticket.discount}%, to $#{"%.2f" % calculation}."

# ticket.price = 72.50
# puts "Whoops -- it just went up. It now costs $#{"%.2f" % ticket.price}."
