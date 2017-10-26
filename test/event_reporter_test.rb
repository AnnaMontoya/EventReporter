require "minitest/autorun"
require "minitest/pride"
require "./lib/event_reporter"

class EventReporterTest < Minitest::Test

  def setup
    @event = EventReporter.new
    @event.load
  end

  def test_that_it_will_load_file
    assert_equal 5175, @event.load.count
  end

  def test_queue_is_empty_by_default
    assert_equal 0, @event.queue.count
  end

  def test_it_can_load_a_first_name
    @event.find("first_name", "John")
    assert_equal 63, @event.queue.count
  end

end
