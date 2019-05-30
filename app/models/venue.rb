require_relative "./event"

class Venue
    attr_accessor :name, :location, :rental_fee
    @@all = []

    def initialize(name, location, rental_fee)
        @name = name
        @location = location
        @rental_fee = rental_fee
        @@all << self
    end

    def self.all
        @@all
    end
    
    def events
        Event.all.select do |event|
            event.venue == self
        end
    end

    def revenue
        @rental_fee * self.events.size
    end

    def attendees
        attendee_arr = []
        self.events.each do |event|
            attendee_arr << event.attendees
        end
        attendee_arr.flatten.uniq
    end

    def self.guest_lists
        guest_hash = {}
        self.all.each do |venue|
            venue.events.each do |event|
                guest_hash[event.name] = event.attendees
            end
        end
        return guest_hash
    end
end