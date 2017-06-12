class ApplicationController < ActionController::Base
Time.zone = 'Central Time (US & Canada)'
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
    @date = Time.now
    @time = Time.now
end
