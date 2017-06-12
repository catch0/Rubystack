class WelcomeController < ApplicationController
  def index
  @date = Time.now
  @time = Time.now
    
  end
end
