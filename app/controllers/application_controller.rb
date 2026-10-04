class ApplicationController < ActionController::Base
  allow_browser versions: :modern
  stale_when_importmap_changes

   rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
   private 
   def record_not_found
    render "/errors/not_found", status: :not_found
   end 
end
