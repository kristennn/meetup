class MeetsController < ApplicationController

  def index
    @meets = Meet.all
  end

  def new
    @meet = Meet.new
  end

  def show
    @meet = Meet.find(params[:id])
  end

  def create
    @meet = Meet.new(meet_params)
    if @meet.save
      redirect_to meets_path
    else
      render :new
    end
  end

  private

  def meet_params
    params.require(:meet).permit(:title, :info)
  end

end
