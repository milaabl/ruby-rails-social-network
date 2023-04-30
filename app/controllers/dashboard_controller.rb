class DashboardController < ApplicationController
  layout "authorized"
  include Secured
  def index
    @user = session[:userinfo]['nickname']
  end
end
