class PagesController < ApplicationController

  def home
  end

  def first
    students = Student.all
    @result = 0
    students.each { |student|
      @result += 1 if student.is_need_dorm
    } unless students.nil?
    @result
  end

  def second
    students = Student.all
    @result = Array.new
    students.each { |student|
      @result.append(student) if student.is_teacher && student.experience > 2
    } unless students.nil?
    @result
  end

  def third
    students = Student.all
    @result = Array.new
    students.each { |student|
      @result.append(student) if student.school == "ped"
    } unless students.nil?
    @result
  end

  def fourth
    students = Student.all
    languages = Language.all
    @result = Hash.new
    students.each { |student|
      tmp_language = languages.find_by(id: student.language_id)
      @result[tmp_language] = [] if @result[tmp_language].nil?
      @result[tmp_language] = @result[tmp_language].append(student)
    } unless students.nil?
    @result
  end

end