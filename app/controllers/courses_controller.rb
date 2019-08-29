class CoursesController < ApplicationController
   before_action :find_me, only: [:show, :edit, :update, :destroy]
  def index
    @courses =Course.all
  end

  def show

  end

  def new
    @course = Course.new
  end

  def edit

  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to @course
    else
      render 'new'
    end
  end

  def update
    @course.update(course_params)
    @course.save
    redirect_to @course
  end

  def destroy
    @course.destroy
    redirect_to courses_path
  end

  private
    def course_params
      params.require(:course).permit( :courseno, :coursename,)
    end

  def find_me
      @course = Course.find_by(id: params[:id])
  end

end
