require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Example of a variable definition that will be available in your Pry session once you've built out the model:

lucy = Attendee.new("Lucy", 22)
ben = Attendee.new("Ben", 10)
john = Attendee.new("John", 4)
mia = Attendee.new("Mia", 19)
ron = Attendee.new("Ron", 40)
sam = Attendee.new("Sam", 3)

venue_A = Venue.new("A", "loc_A", 100)
venue_B = Venue.new("B", "loc_B", 350)
 

event_A = Event.new("A", 100, 20, venue_A)
event_B = Event.new("B", 40, 5, venue_B)
event_C = Event.new("C", 400, 25, venue_A)

a_ticket_1 = Ticket.new(lucy, event_A)
a_ticket_2 = Ticket.new(ben, event_A)
a_ticket_3 = Ticket.new(john, event_A)
a_ticket_4 = Ticket.new(mia, event_A)
a_ticket_5 = Ticket.new(ron, event_A)
a_ticket_6 = Ticket.new(sam, event_A)
b_ticket_1 = Ticket.new(john, event_B)
b_ticket_2 = Ticket.new(mia, event_B)
b_ticket_3 = Ticket.new(ron, event_B)
c_ticket_1 = Ticket.new(sam, event_C)



#The variable `lucy` will point to an instance of a new attendee

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
