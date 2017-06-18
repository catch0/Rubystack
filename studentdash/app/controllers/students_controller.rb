class StudentsController < ApplicationController
    def new 
        @dojos = Dojo.all
        @dojo = Dojo.find(params[:id])
        @student = Student.all
    end
    
    def show
      @student = Student.with_dojo(params[:id]) 
      @cohort = Student.cohort(@student)        
        
    end
    
    def create
        @student = Student.new(student_params)

    if @student.save
      redirect_to "/dojos/#{@student.dojo_id}", notice: "You have successfully created a Student!"
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to :back
    end
    end
    
    def edit
    @student = Student.find(params[:id])
    @dojo = Dojo.all
    end
    
    def update
    @student = Student.find(params[:id])

    if @student.update(student_params)
      redirect_to "/dojos/#{@student.dojo.id}"
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to :back
    end
    end
    
    def destroy
     student =Student.destroy(params[:id])
        redirect_to :back
    end
    
    private 
    def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
    end
    
end
