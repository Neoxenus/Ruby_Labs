#single event
class PersonalEvent < Event

  attr_accessor :description

  def initialize(date = Date, importance, name, description)
    super(date, importance, name)
    @description = description
  end
  def equal_date?(date)
    if super
      date.year.equal?(@date.year)
    end
    false
  end
  def print
    puts "Name: " + name.to_s + "\nDescription: " + description.to_s
  end
  def between(first_date, last_date)
    first_date <= @date && @date <= last_date
  end
end
