class TeachersController < ApplicationController
  before_action :find_me, only: [:show, :edit, :update, :destroy]  
  def index
    # @teachers =Teacher.all
    @teachers = Teacher.page(params[:page]).per(10)
  end

  def show

  end

  def new
    @teacher = Teacher.new
  end

  def edit

  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      redirect_to @teacher
    else
      render 'new'
    end
  end

  def update
    @teacher.update(teacher_params)
    @teacher.tsex = params[:tsex]
    @teacher.course_id = params[:course_id]
    @teacher.save
    redirect_to @teacher
  end

  def destroy
    @teacher.destroy
    redirect_to teachers_path
  end

  private
    def teacher_params
      params.require(:teacher).permit(:tname, :tage, :tsex,
       :phonenumber, :classname_id, :course_id)
    end

  def find_me
    @teacher = Teacher.find_by(id: params[:id])
  end

  end