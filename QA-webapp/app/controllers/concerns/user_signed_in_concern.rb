module UserSignedInConcern
  extend ActiveSupport::Concern
  
  included do
      helper_method :user_signed_in?, :current_user
  end
    
  def user_signed_in?
    if session[:current_user_id] != nil
      return true
    end
    return false
  end
  
  def current_user
    User.find session[:current_user_id] unless user_signed_in? == false
  end
end