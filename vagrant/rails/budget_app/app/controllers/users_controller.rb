class UsersController < ApplicationController
  layout "login_reg", only: [:index, :new, :create]
  layout "welcome", only: [:welcome]
  
  def index
    render layout: "login_reg"
  end

  def new
  end

  def welcome
    unless session[:total_to_spend]
      @total_to_spend = 0;
    end
    start_date = Date.today
    end_date = Date.today.end_of_month
    @days_left = (end_date - start_date).to_i
    @total_to_spend = session[:total_to_spend]
    @total_per_day = (@total_to_spend / @days_left)
  end 

  def calculate
    income = params[:monthly_income].to_i
    expenses = params[:monthly_expenses].to_i
    to_save = params[:save_amount].to_i
    @total_to_spend = income - expenses - to_save
    session[:total_to_spend] = @total_to_spend
    redirect_to "/welcome"
  end
  
  def create
      user = User.create(new_user_params)
      session[:user_id] = user.id
      redirect_to "/welcome"
  end

  def login
    user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        redirect_to "/welcome"
      else
        redirect_to '/'
      end
    end

  def destroy_session 
    session.clear
    redirect_to "/"
  end

  private 
  def new_user_params 
    params.require(:user).permit(:name, :email, :password)
  end
    

end
