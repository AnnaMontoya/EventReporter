require 'csv'
require "./lib/attendee"
require "pry"

class Queue
  def initialize
  @queue     = []
  @attendees = []
  end

  def load(filename = "full_event_attendees.csv")
  contents = CSV.open filename, headers: true, header_converters: :symbol
  contents.each do |row|
    # binding.pry
    @attendees << Attendee.new(row)
    binding.pry
    end
  end
end

Queue.new.load

# line 12-15 load?
