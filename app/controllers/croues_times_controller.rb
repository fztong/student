class CrouesTimesController < ApplicationController
before_action :find_me, only: [:show, :edit, :update, :destroy]
def index
    @croues_times = CrouesTime.all
  end

  def show

  end

  def new
    @croues_time = CrouesTime.new
  end

  def edit

  end

  def create

    @croues_time = CrouesTime.new(croues_time_params)
    	# binding.pry
    if @croues_time.save
      redirect_to croues_times_path
    else
      render 'new'
    end
  end

  def update
    @croues_time.update(croues_time_params)
    @croues_time.save
    redirect_to @croues_time
  end

  def destroy
    @croues_time.destroy
    redirect_to croues_time_path
  end

  private
    def croues_time_params
      params.require(:croues_time).permit( :start_time, :end_time,:ctime_id, :order,)
    end

  def find_me
      @croues_time = CrouesTime.find_by(id: params[:id])
  end

end
