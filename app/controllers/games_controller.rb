class GamesController < ApplicationController
  # Add your GamesController code here

  def index
    @games = Game.all
  end

  def create
    @game = Game.create(state: params[:state])
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def update
    @game = Game.find(params[:id])
    
  end

  # private
  #
  # def game_params
  #   params.require(:game).permit(:state)
  # end
end
