class SchoolClassesController < ApplicationController
	def index
		@school_classes = SchoolClass.all
	end

	def new
	end

	def create
		@school_class = SchoolClass.create(school_class_params)
		redirect_to school_class_path(@school_class)
	end

	def show
		set
	end

	def edit
		set
	end

	def update
		set
		@school_class.update(school_class_params)
		redirect_to school_class_path(@school_class)
	end

	def school_class_params
		params.require(:school_class).permit(:title, :room_number)
	end

	def set
		@school_class = SchoolClass.find(params[:id])
	end
end