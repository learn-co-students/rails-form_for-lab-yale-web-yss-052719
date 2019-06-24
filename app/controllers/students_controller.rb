class StudentsController < ApplicationController
    
    def index
        @students = Student.all
        render '/students/index.html.erb'
    end
    
    def new
        @student = Student.new
        
        render '/students/new.html.erb'
    end

    def create
        @student = Student.create(first_name: params["student"]["first_name"], last_name: params["student"]["last_name"])
        redirect_to student_path(@student)
    end

    def show
        @student = Student.find_by(id: params["id"])
        render '/students/show.html.erb'
    end

    def edit
        @student = Student.find_by(id: params["id"])
        render '/students/edit.html.erb'
    end

    def update
        @student = Student.find_by(id: params["id"])
        @student.update(first_name: params["student"]["first_name"], last_name: params["student"]["last_name"])
        redirect_to student_path(@student)
    end

    # private 

    # def student_params
    #     params.require(:student).permit("first_name", "last_name")
    #   end
end