class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @games = Game.all
  end

  def show

  	#accéder à un jeu selon son ID dans l'URL
  	@a_game = Game.find(params[:id])

  	#accéder à tous les gamestags du jeu dont l'ID est dans l'URL
	@gt = GameTag.where(game: params[:id])

	#accéder à tous les pegis du jeu dont l'ID est dans l'URL
	@gpegi = GamePegi.where(game: params[:id])

  end

end
