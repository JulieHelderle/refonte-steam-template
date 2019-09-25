class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @games = Game.all
  end

  def show
  	@tags = Tag.all
  	@a_game = Game.find(params[:id])
  	@a_tag = Tag.find(params[:id])

  	@gt = GameTag.first


  end

end
