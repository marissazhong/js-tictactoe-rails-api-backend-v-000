class GamesController < ApplicationController
  # Add your GamesController code here

  def index
    @games = Game.all
  end

  def create
    @game = Game.new(state params[:state])
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

  # private
  #
  # def game_params
  #   params.require(:game).permit(:state)
  # end
end
