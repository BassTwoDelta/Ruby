class HellosController < ApplicationController
  def index
    render plain: "What do you want me to say?!"
  end
  def hello
    render plain: "Hello Codoing Dojo!!"
  end
  def say 
    render plain: "Saying Hello!"
  end

  def hellojoe
    render plain: "Saying Hello to Joe!"
  end

  def hellomichael
    redirect_to "/say/hello/joe"
  end

  def times
    if session[:count].nil?
    session[:count] = 0
    end
    session[:count] +=1
    render plain: "You've visted this url #{session[:count]} times"
  end
  
  def timesreset
    reset_session
    redirect_to "/times"
  end
end
