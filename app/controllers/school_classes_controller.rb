class SchoolClassesController < ApplicationController
    def index
        @school_classs = SchoolClass.all
        render '/school_class/index.html.erb'
    end
    
    def new
        @school_class = SchoolClass.new
        render '/school_class/new.html.erb'
    end

    def create
        @school_class = SchoolClass.create(title: params["school_class"]["title"], room_number: params["school_class"]["room_number"])
        redirect_to school_class_path(@school_class)
    end

    def show
        @school_class = SchoolClass.find_by(id: params["id"])
        render '/school_class/show.html.erb'
    end

    def edit
        @school_class = SchoolClass.find_by(id: params["id"])
        render '/school_class/edit.html.erb'
    end

    def update
        @school_class = SchoolClass.find_by(id: params["id"])
        @school_class.update(title: params["school_class"]["title"], room_number: params["school_class"]["room_number"])
        redirect_to school_class_path(@school_class)
    end

    # private 

    # def school_class_params
    #     params.require(:schoolclass).permit(:title, :room_number)
    #   end
    
end