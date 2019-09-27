class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index

  	#accéder à tous les jeux
    @games = Game.all

  end

  def show

  	#liste des requêtes

  	#accéder à un jeu selon son ID dans l'URL
  	@a_game = Game.find(params[:id])

  	#accéder à tous les gamestags du jeu dont l'ID est dans l'URL
	@gt = GameTag.where(game: params[:id])

	#accéder à tous les pegis du jeu dont l'ID est dans l'URL
	@gpegi = GamePegi.where(game: params[:id])

	#accéder à tous les DLC du jeu dont l'ID est dans l'URL
	@dlc = Dlc.where(game: params[:id])

	#accéder à tous les modes du jeu dont l'ID est dans l'URL
	@mods = Mod.where(game: params[:id])

	#accéder à toutes les Evals du jeu dont l'ID est dans l'URL
	@eval = Eval.where(game: params[:id])

	#accéder à toutes les vidéos du jeu dont l'ID est dans l'URL
	@video = Video.where(game: params[:id])

	#accéder à tous les trailers du jeu dont l'ID est dans l'URL
	@trailer = Trailer.where(game: params[:id])

	#accéder à toutes les langues du jeu dont l'ID est dans l'URL
	@glang = GameLanguage.where(game: params[:id])

	#accéder au développeur d'un jeu dont l'ID est dans l'URL
	@dev = Dev.where(game: params[:id])

	#accéder à l'éditeur d'un jeu dont l'ID est dans l'URL
	@publisher = Publisher.where(game: params[:id])

  end

end
