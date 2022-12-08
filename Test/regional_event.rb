#also periodical event
class RegionalEvent < Event

  attr_accessor :description

  def initialize(date = Date, importance, name, description)
    super(date, importance, name)
    @description = description
  end
  def equal_date?(date)
    super
  end

  def print
    puts "Name: " + name.to_s + "\nDescription: " + description.to_s
  end

  def between(first_date, last_date)
    super
  end
end
