class WeeksController < ApplicationController
before_action :find_me, only: [:show, :edit, :update, :destroy]
  def index
    @weeks = Week.all
  end

  def show

  end

  def new
    @week = Week.new
  end

  def edit

  end

  def create
   @week = Week.new(week_params)
    if @week.save
      redirect_to weeks_path
    else
      render 'new'
    end
  end

  def update
    @week.update(week_params)
    @week.save
    redirect_to @week
  end

  def destroy
    @week.destroy
    redirect_to week_path
  end

  private
    def week_params
      params.require(:week).permit( :week, :week_day,)
    end

  def find_me
      @week = Week.find_by(id: params[:id])
  end

end