class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
  end

  def new
    @dojo = Dojo.new
  end

  def redirect
    redirect_to '/dojos'
  end

  def create 
    @dojo = Dojo.create(dojo_params)
    @dojo.save
    if @dojo.errors 
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
