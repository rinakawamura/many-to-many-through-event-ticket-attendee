require_relative "./ticket.rb"

class Attendee
    attr_accessor :name, :age
    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end
     
    def tickets
        Ticket.all.select do |ticket|
            ticket.attendee == self
        end
    end

    def events
        self.tickets.map do |ticket|
            ticket.event
        end
    end

    def money_spent
        total = 0
        self.events.each do |event|
            total += event.ticket_price
        end
        total
    end

    def venues
        self.events.map do |event|
            event.venue
        end
    end

end

# Attendee.all
  # Returns an array of all Attendees
# Attendee#events
  # Returns an array of all Events that the Attendee is attending.
# Attendee#money_spent
  # Returns the dollar amount this Attendee has spent on Tickets for Events