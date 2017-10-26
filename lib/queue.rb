require 'csv'
# require_relative "./lib/attendee"
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
