class WelcomeController < ApplicationController
  def index
  end

  def new
  end
   
  def submit
      @student = Student.create(name: params[:name], location: params[:location], language: params[:language], comment: params[:comment])
  end
end
