class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
  end

  def new
    @dojo = Dojo.new
  end

  def show
    @dojo = Dojo.find(params[:id])
  end

  def edit
    @dojo = Dojo.find(params[:id])
  end

  def update
    @dojo = Dojo.find(params[:id])
    unless @dojo.update(dojo_params)
      flash[:errors] = @dojo.errors.full_messages
      redirect_to "/dojos/#{params[:id]}/edit"
    else
      redirect_to "/dojos/#{params[:id]}"
    end
  end

  def destroy
    @dojo = Dojo.find(params[:id])
    @dojo.destroy
    redirect_to "/dojos"
  end
  
  def redirect
    redirect_to '/dojos'
  end

  def create 
    unless Dojo.create(dojo_params)
      flash[:errors] = @dojo.errors.full_messages
      redirect_to '/dojos/new'
    else 
      redirect_to '/dojos'
    end
  end

  private
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
