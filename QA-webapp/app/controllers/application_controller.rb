class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true  
end

#changed from protect_from_forgery with: exception