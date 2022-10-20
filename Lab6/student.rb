class Student
  attr_accessor :name, :experience, :school, :languages, :is_need_dorm, :is_teacher

  def to_s
    "[name: #{name}, is_need_dorm: #{is_need_dorm}, experience: #{experience}, is_teacher: #{is_teacher}, school: #{school}, languages: #{languages}]"
  end

  def initialize(name, is_need_dorm = false, experience = 0, is_teacher = false, school = "", languages = "")
    @name = name
    @is_need_dorm = is_need_dorm
    @is_teacher = is_teacher
    @experience = experience
    @school = school
    @languages = languages
  end
end
