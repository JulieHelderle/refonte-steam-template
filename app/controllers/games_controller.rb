class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @games = Game.all
  end

  def show
  	@tags = Tag.all
  	@a_tag = Tag.find(params[:id])

  	@a_game = Game.find(params[:id])

	@gt = GameTag.all



  end

end
