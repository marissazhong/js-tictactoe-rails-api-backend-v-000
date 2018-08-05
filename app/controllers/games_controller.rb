class GamesController < ApplicationController
  # Add your GamesController code here

  def index

  end

  def create
    @game = Game.new(game_params)
    redirect_to game_path(@game)
  end

  def show
    @game = game.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @game }
    end
  end

  def update
  end

  private

  def game_params
    params.require(:game).permit(:state)
  end
end
