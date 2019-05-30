# class Venue
#     attr_accessor :name, :location, :rental_fee
#     @@all = []

#     def initialize(name, location, rental_fee)
#         @name = name
#         @location = location
#         @rental_fee = rental_fee
#         @@all << self
#     end

#     def self.all
#         @@all
#     end
    
#     def events
#         Event.all.select do |event|
#             event.venue == self
#         end
#     end
# end