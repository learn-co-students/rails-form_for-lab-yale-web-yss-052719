class StudentsController < ApplicationController
	def index
		@students = Student.all
	end

	def new
	end

	def create
		@student = Student.create(student_params)
		redirect_to student_path(@student)
	end

	def show
		set
	end

	def edit
		set
	end

	def update
		set
		@student.update(student_params)
		redirect_to student_path(@student)
	end

	def student_params
		params.require(:student).permit(:first_name, :last_name)
	end

	def set
		@student = Student.find(params[:id])
	end
end