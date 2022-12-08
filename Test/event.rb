class Event

  attr_accessor :date, :importance, :name

  def initialize(date, importance, name)
    @date = date
    @importance = importance
    @name = name
  end
  def equal_date?(date)
    unless date.class.equal?(Date) || date.class.equal?(DateTime)
      return false
    end
      date.month.equal?(@date.month) & date.day.equal?(@date.day)
  end
  def between(first_date, last_date)
    if first_date.month<(@date.month) && @date.month < last_date.month
      true
    else
      if first_date.month.equal?(@date.month)
        return first_date.day <= @date.day
      else last_date.month.equal?(@date.month)
      return last_date.day <= @date.day
      end
    end
  end
  def print
    puts "Name: " + name.to_s
  end
end
