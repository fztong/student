class SelectCoursesController < ApplicationController
before_action :find_me, only: [:show, :edit, :update, :destroy]
  def index
    @select_courses = SelectCourse.all
   # @select_courses = SelectCourse.page(params[:page]).per(10)
  end

  def show   

  end

  def new
    @select_course = SelectCourse.new
  end

  def edit

  end

  def create 
    @select_course = SelectCourse.new(select_course_params)
      if @select_course.save
        redirect_to @select_course
      else
      render 'new'
    end
  end

  def update
    @select_course.update(select_course_params)
    @select_course.save
    redirect_to @select_course
  end

  def query_teacher
  	course = Course.find_by(id: params[:course_id])
  	teachers = course.teachers
  	render json: {success: teachers.present?, teachers: teachers.map{|t| [t.tname, t.id]}}
  end

  def destroy
    @select_course.destroy
    redirect_to select_courses_path
  end

  private
    def select_course_params
      params.require(:select_course).permit(:stu_id, :course_id, :grade, :teacher_id,)
  end

  def find_me
      @select_course = SelectCourse.find_by(id: params[:id])
  end

end
