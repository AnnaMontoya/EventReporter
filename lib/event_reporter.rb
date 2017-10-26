require 'csv'
require "pry"
require_relative "attendee"
require_relative "queue"

class EventReporter
  attr_reader :queue

  def initialize
    @queue     = Queue.new
    @attendees = []
  end

  def load(filename = "full_event_attendees.csv")
    contents = CSV.open filename, headers: true, header_converters: :symbol
    contents.map do |row|
    @attendees << Attendee.new(row)
    end
  end

  def find(attribute, criteria)
    @attendees.find_all do |attendee|
      if attendee.first_name.downcase == criteria.downcase
        queue.data << attendee
      end
    end
    queue.data
  end

end

input = gets.chomp
while (input!= 'exit')
  EventReporter.new
  if input == "find"
  end
end
