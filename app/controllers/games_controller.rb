class GamesController < ApplicationController
  # Add your GamesController code here

  def index
    
  end

  def create
    @game = Game.new(game_params)
    redirect_to game_path(@game)
  end

  def show
  end

  def update
  end

  private

  def game_params
    params.require(:game).permit(:state)
  end
end
