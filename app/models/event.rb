require_relative "./ticket.rb"

class Event
    attr_accessor :name, :total_cost, :ticket_price, :venue
    @@all = []

    def initialize(name, total_cost, ticket_price, venue)
        @name = name
        @total_cost = total_cost
        @ticket_price = ticket_price
        @venue = venue
        @@all << self
    end

    def self.all 
        @@all
    end

    def tickets
        Ticket.all.select do |ticket|
            ticket.event == self
        end
    end

    def sell_to_break_even
        tickets_sold = self.tickets.size
        diff = @total_cost - @ticket_price * tickets_sold
        if diff <= 0
            0
        else
            diff/@ticket_price
        end
    end

    def attendees
        self.tickets.map do |ticket|
            ticket.attendee
        end
    end

    def average_age
        total = 0
        attendees = self.attendees
        attendees.each do |attendee|
            total += attendee.age
        end
        if attendees.size > 0
            total/attendees.size
        else
            0
        end
    end

end

# Event.all
  # Returns an array of all Events
# Event#sales_to_break_even
  # Returns the number of Tickets that still need to be "purchased" for this Event before the Event reaches the break-even point.
  # If the Event has sold enough Tickets to break-even, return the number 0. 
# Event#attendees
  # Returns an array of Attendee that have Tickets for the Event
# Event#average_age
  # Returns the average age of all the Attendees that will be at the Event
