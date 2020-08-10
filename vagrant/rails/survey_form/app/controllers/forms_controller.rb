class FormsController < ApplicationController
  def index
  end

  def create
    @result.name = params[:name]
    redirect_to "/results"
  end

  def show
    render "results"
  end
end
