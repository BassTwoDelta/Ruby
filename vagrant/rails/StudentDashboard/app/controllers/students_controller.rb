class StudentsController < ApplicationController
    def index
        @dojo = Dojo.find(params[:dojo_id])
        @students = Student.where(dojo_id: params[:dojo_id])
    end

    def new
        @dojos = Dojo.where.not(id: params[:dojo_id])
        @dojo = Dojo.find(params[:dojo_id])
    end

    def create
        @dojo = Dojo.find(params[:dojo_id])
        unless Student.create(student_params)
            flash[:errors] = @student.errors.full_messages
            redirect_to "/dojos/#{@dojo.id}/students/new"
        else
            redirect_to "/dojos/#{@dojo.id}/students"
        end
    end

    def edit
        @dojo = Dojo.find(params[:dojo_id])
        @student = Student.find(params[:id])
        @dojos = Dojo.where.not(id: params[:dojo_id])
    end

    def update
        @student = Student.find(params[:id])
        unless @student.update(student_params)
            flash[:errors] = @student.errors.full_messages
            redirect_to "/dojos/#{params[:dojo_id]}/students/#{params[:id]}/edit"
        else
            redirect_to "/dojos/#{@student[:dojo_id]}/students/#{params[:id]}"
        end
    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy
        redirect_to "/dojos"
    end

    def show
        @dojo = Dojo.find(params[:dojo_id])
        @student = Student.find(params[:id])
        @cohort = Student.where(dojo_id: params[:dojo_id]).where.not(id: params[:id])
    end

    private 
    def student_params
        params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
    end
end
