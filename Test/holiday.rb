#periodical event (every year)
class Holiday < Event
  def initialize(date = Date, importance, name)
    super
  end

  def equal_date?(date)
    super
  end

  def print
    super
  end

  def between(first_date, last_date)
    super
  end
end
