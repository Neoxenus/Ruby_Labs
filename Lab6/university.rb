require './student'
class University

  attr_accessor :students

  def initialize(students = Student[])
    @students = students
  end

  def number_need_dorm
    result = 0
    students.each { |student|
      result += 1 if student.is_need_dorm
    } unless students.nil?
    result
  end

  def list_with_teacher_experience
    result = Array.new
    students.each { |student|
      result.append(student) if student.is_teacher && student.experience > 2
    } unless students.nil?
    result
  end

  def list_from_ped
    result = Array.new
    students.each { |student|
      result.append(student) if student.school == "ped"
    } unless students.nil?
    result
  end

  def language_groups
    result = Hash.new
    students.each { |student|
      result[student.languages] = [] if result[student.languages].nil?
      result[student.languages] = result[student.languages].append(student)
    } unless students.nil?
    result
  end
end
