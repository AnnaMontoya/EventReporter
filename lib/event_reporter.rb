require 'csv'
require "pry"
require "./lib/attendee"
require "./lib/queue"

queue = Queue.new

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
