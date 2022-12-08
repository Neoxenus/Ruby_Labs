require './event'
require './holiday'
require './personal_event'
require './regional_event'
require 'date'
class Calendar
  def initialize(events = Event[])
    @events = events
  end

  def today_notification
    puts "Today's events:"
    counter = 1
    @events.each do |event|
      if is_today?(event)
        puts counter.to_s + ":"
        event.print
        counter += 1
      end
    end
    puts "\n"
  end

  def print_list_events(events)
    counter = 1
    events.each do |event|
        puts counter.to_s + ":"
        event.print
        counter += 1
    end
    puts "\n"
  end

  def sort_by_importance
    @events.sort_by { |event| [event.importance] }
  end


  def sort_by_date
    @events.sort_by { |event| [event.date] }
  end

  def list_events(date)
    events = Array.new
    @events.each do |event|
      if event.equal_date?(date)
        events << event
      end
    end
    events
  end

  def list_events_between(first_date, last_date)
    events = Array.new
    @events.each do |event|
      if event.between(first_date, last_date)
        events << event
      end
    end
    events
  end

  private
  def is_today?(event)
    if event.class.equal?(Holiday) || event.class.equal?(RegionalEvent)
      DateTime.now.month.equal?(event.date.month) & DateTime.now.day.equal?(event.date.day)
    else
      DateTime.now.year.equal?(event.date.year) &
        DateTime.now.month.equal?(event.date.month) & DateTime.now.day.equal?(event.date.day)
    end
  end
end


event1 = Holiday.new(Date.new(2021, 1, 1), 1,  "New year")
event2 = PersonalEvent.new(Date.new(2022, 12, 8), 4,  "Very bad day", "Test in 2021")
event3 = RegionalEvent.new(Date.new(2021, 12, 8), 2,  "Test in university", "Test in 2021")
event4 = PersonalEvent.new(Date.new(2021, 12, 7), 3,  "My test in university", "My test in 2021")

calendar = Calendar.new([event1, event2, event3, event4])

calendar.today_notification

calendar.print_list_events(calendar.list_events(Date.new(2021, 12, 8)))
calendar.print_list_events(calendar.list_events_between(Date.new(2021, 2, 8), Date.new(2022,1,1)))

calendar.print_list_events(calendar.sort_by_date)
calendar.print_list_events(calendar.sort_by_importance)