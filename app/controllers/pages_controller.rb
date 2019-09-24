class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :produit]

  def home
  end

  
end
