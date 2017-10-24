require 'csv'
require "./lib/attendee"
require "pry"

class Queue
  attr_reader :data

  def initialize
    @data = []
  end

  def count
    count = data.count
  end
end

#   def load(filename = "full_event_attendees.csv")
#   contents = CSV.open filename, headers: true, header_converters: :symbol
#   contents.map do |row|
#     # binding.pry
#     @attendees << Attendee.new(row)
#     binding.pry
#     end
#   end
# end

# Queue.new.load

# line 12-15 load?
