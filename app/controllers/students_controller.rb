class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    #to create a new student, you need first_name and last_name
    #this info is defined in student_params below
    redirect_to student_path(@student)
    # redirect to "/students" to show the newly created student in all students page
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    #need to find the student you want to update
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    #find the student in the database
    #update the student by first_name and last_name
    redirect_to student_path(@student)
    #after you update, you show all of the students again
  end

  private
  # creating strong params
  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
