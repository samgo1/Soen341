class ApplicationController < ActionController::Base
	include UserSignedInConcern
	protect_from_forgery with: :exception
  
end
