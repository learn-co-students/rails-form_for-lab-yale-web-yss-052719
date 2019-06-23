class SchoolClassesController < ApplicationController
    def index
        @school_classes = SchoolClass.all
    end

    def show
        set_school_class
    end

    def new
    end

    def create
        sc = SchoolClass.create(school_class_params)
        redirect_to school_class_path(sc)
    end

    def edit
        set_school_class
    end

    def update
        sc = SchoolClass.update(school_class_params)
        redirect_to school_class_path(sc)
    end

    private
    
    def set_school_class
        @school_class = SchoolClass.find(params[:id])
    end

    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end
end