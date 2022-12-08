require 'minitest/autorun'
require './calendar'
class CalendarTest < Minitest::Test
  def setup
    @event1 = Holiday.new(Date.new(2021, 1, 1), 1,  "New year")
    @event2 = PersonalEvent.new(Date.new(2022, 12, 8), 4,  "Very bad day", "Test in 2021")
    @event3 = RegionalEvent.new(Date.new(2021, 12, 8), 2,  "Test in university", "Test in 2021")
    @event4 = PersonalEvent.new(Date.new(2021, 12, 7), 3,  "My test in university", "My test in 2021")
    @calendar = Calendar.new([@event1, @event2, @event3, @event4])
  end


  def test_1
    assert_equal([@event3], @calendar.list_events(Date.new(2021, 12, 8)))
  end

  def test_2
    assert_equal([@event1, @event3, @event4], @calendar.list_events_between(Date.new(2021, 2, 8), Date.new(2022,1,1)))
  end
  def test_3

    assert_equal([@event1, @event4, @event3, @event2], @calendar.sort_by_date)
  end
  def test_4
    assert_equal([@event1, @event3, @event4, @event2], @calendar.sort_by_importance)
  end
end
