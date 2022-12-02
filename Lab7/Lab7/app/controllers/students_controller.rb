class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  def edit
    @student = Student.find(params[:id])
  end
  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to @student
    else
      redirect_to edit_student_url
    end
  end
  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end
  def new
    @student = Student.new
  end
  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student
    else
      redirect_to new_student_url
    end
  end
  private
  def student_params
    params.require(:student).permit(:name, :is_need_dorm, :is_teacher, :experience, :school, :language_id )
  end
end
