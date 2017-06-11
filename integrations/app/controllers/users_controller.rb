class UsersController < ApplicationController
def index
      #render json:User.all
      @users= User.all
end

def new
      
end
    
def create
  @user = User.create(first_name: params[:first_name], last_name: params[:last_name], age: params[:age])
  redirect_to '/users/index'
end
    
def profile
    render json: User.first
end

def edit

end
def total 
   render json:User.all.count
end
    
end
