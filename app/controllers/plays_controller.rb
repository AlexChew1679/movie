class PlaysController < ApplicationController
  before_action :find_play, only: [:show, :edit, :update, :destroy]

  def index
    @plays = Play.all.order("created_at DESC")
  end

  def show

  end

  def new
    @play = Play.new
  end

  def create
    @play = Play.new(play_params) #params.require(:play).permit(:title, :description, :director), dont want to repeat code thats why is define below private
      if @play.save
        redirect_to root_path
      else
        render 'new'
      end
  end

  def edit
  end

  def update
  end

  private

  def play_params
    params.require(:play).permit(:title, :description, :director)
  end

  def find_play
    @play = Play.find(params[:id])
  end
end
