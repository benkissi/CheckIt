class AnalyticsController < ApplicationController
before_action :authenticate_manufacturer!
  layout "analytics"
  def show
  end
end
