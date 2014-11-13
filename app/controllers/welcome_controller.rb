class WelcomeController < ApplicationController
  def index
  end

  def input
  	render plain: params[:input]
  end




end
