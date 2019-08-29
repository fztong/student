class StusController < ApplicationController  
  before_action :find_me, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token, :only => [:create_student]

  def index
    # @stus =Stu.all
    @stus = Stu.page(params[:page]).per(10)
  end

  def show

  end

  def new
    @stu = Stu.new
  end

  def edit

  end

  def create
    @stu = Stu.new(stu_params)
    if @stu.save
      redirect_to @stu
    else
      render 'new'
    end
  end

  def update
    @stu.update(stu_params)
    @stu.ssex = params[:ssex]
    @stu.classname_id = params[:classname_id]
    @stu.save
    redirect_to @stu
  end

  def destroy
    @stu.destroy

    redirect_to stus_path
  end

# 调接口传数据
  def create_student
    stu = Stu.new(sname: params[:stu][:sname], ssex: params[:stu][:ssex])
    stu.sage = params[:stu][:sage]
    stu.sno = params[:stu][:sno]
    flag = stu.save
    render json: {success: flag, msg: (flag ? "true" : "#{stu.errors.messages}")}
  end

  def rest_stu
    stu = Stu.find_by(id: params[:id])
    Stu.create_stu(stu)
  end

  private
    def stu_params
      params.require(:stu).permit(:sname, :sno, :sage, 
        :ssex, :classname_id, :photo)
    end

  def find_me
      @stu = Stu.find_by(id: params[:id])
  end

end