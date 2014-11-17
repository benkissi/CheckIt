class WelcomeController < ApplicationController
  def index
  end

  def check
  end

  def input
  	render plain: params[:input]
  end




end
