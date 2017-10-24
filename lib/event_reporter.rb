require 'csv'
require "pry"
require "./lib/attendee"
require "./lib/queue"

class EventReporter
  attr_reader :queue

  def initialize
  @queue     = Queue.new
  @attendees = []
  end

  def load(filename = "full_event_attendees.csv")
    contents = CSV.open filename, headers: true, header_converters: :symbol
    contents.map do |row|
      # binding.pry
    @attendees << Attendee.new(row)
    # binding.pry
    end
  end

  def find(attribute, criteria)
    you = @attendees.find_all do |attendee|
      attendee.first_name == criteria
    end
    queue.data << you
    binding.pry
  end





end

#commands: load = Erase any loaded data and parse the specified file.
              #  If no filename is given, default to full_event_attendees.csv.
#          find (attribute, criteria) = "Populate the queue with all records matching the
                            # criteria for the given attribute."
#          queue = an array capable of outputting, clearing, printing, save, and export
#          help = Output a listing of the available individual commands, and a description
                  # of how to use the specific command

# def clean_zipcode(zipcode)
#   zipcode.to_s.rjust(5,"0")[0..4]
# end
#
# puts "EventReporter initialized."
#
# contents = CSV.open './full_event_attendees.csv', headers: true, header_converters: :symbol
#
# contents.each do |row|
#   # binding.pry
#   name = row[:first_name]
#
#   zipcode = clean_zipcode(row[:zipcode])
#
#   puts "#{name} #{zipcode}"
# end
