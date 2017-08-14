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

  def edit
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

  def update
    @meet = Meet.find(params[:id])
    if @meet.update(meet_params)
      redirect_to meet_path(@meet)
    else
      render :edit
    end
  end

  def destroy
    @meet = Meet.find(params[:id])
    @meet.destroy
    redirect_to meets_path
  end

  private

  def meet_params
    params.require(:meet).permit(:title, :info)
  end

end
