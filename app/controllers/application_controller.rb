class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :reset_session
      
      def reset_session
          session[:player_id] = session[:player_id]
        end
 
end
