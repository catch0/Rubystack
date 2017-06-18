class DojosController < ApplicationController
    def index
    @dojo = Dojo.all
    end
    
    def create
        dojo = Dojo.create(dojo_params)
        if dojo.valid?
            redirect_to '/'
        else flash[:dojo_errors] =dojo.errors.full_messages
            redirect_to '/dojos/new'
        end
    end
    def show
        @dojo = Dojo.find(params[:id])
        @students = @dojo.students
    end
    
    def edit
    @dojo = Dojo.find(params[:id])
    end
    
    def update
      dojo = Dojo.update(params[:id],dojo_params)
        if dojo.valid? 
          redirect_to '/'
      else 
          flash[:dojo_errors] = dojo.errors.full_messages
          redirect_to "/dojos/edit/#{dojo.id}"
      end
    end
    
    def destroy
        dojo = Dojo.destroy(params[:id])
        redirect_to "/"
    end
    
    private 
    def dojo_params
        params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
