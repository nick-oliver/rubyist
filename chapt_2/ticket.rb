ticket = Object.new

def ticket.date
  "1903-01-02"
end
def ticket.venue
  "Town Hall"
end
def ticket.event
  "Author's reading"
end
def ticket.performer
  "Mark Twain"
end
def ticket.seat
  "Second Balcony, row J, seat 12"
end
def ticket.price
  5.50
end
# Added by the exercise in chapter two
def ticket.print_details(*x)
  x.each { |detail| puts "This ticket is #{detail}" }
end

## Original example format with Print and Puts arranged so that everything is
## displayed correctly, when the program is run.

# print "This ticket is for: "
# print ticket.event + ", at "
# print ticket.venue + ", on "
# puts ticket.date + "."
# print "The performer is "
# puts ticket.performer + "."
# print "The seat is "
# print ticket.seat + ", "
# print "and it costs $"
# puts "%.2f." % ticket.price

# refactoring of the print and puts statements above
puts "This ticket is for: #{ ticket.event }, at #{ ticket.venue }.\n" +
"The performer is #{ ticket.performer }.\n" +
"The seat is #{ ticket.seat }, " +
"and it costs $#{ "%.2f." % ticket.price }"
#This provides the variables to comlete the array iteration in the last "def".
ticket.print_details("non-refundable","non-transferable","in a no-smoking area.")
