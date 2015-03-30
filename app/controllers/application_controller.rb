class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception
  layout :select_layout
  def select_layout
  	if devise_controller? 
  		return 'devise'
  	else
  		return 'application'
  	end

  end
end
