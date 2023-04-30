module Secured
    extend ActiveSupport::Concern
  
    included do
      before_action :logged_in_using_omniauth?
    end
  
    def logged_in_using_omniauth?
      logger.info session[:userinfo]
      redirect_to '/' unless session[:userinfo].present?
    end
  end