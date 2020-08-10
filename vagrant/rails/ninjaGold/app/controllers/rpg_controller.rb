class RpgController < ApplicationController
    def index
        unless session[:gold] 
            session[:gold] = 0
            session[:log] = []
        end
        @gold = session[:gold]
    end

    def make_gold
        @gold = session[:gold]
        if(params[:farm])
            golds = rand(10...20)
            session[:gold] += golds
            session[:log].append("You have earned #{golds} golds from the farm!")
        end
        if(params[:cave])
            golds = rand(5...10)
            session[:gold] += golds
            session[:log].append("You have earned #{golds} golds from the cave!")
        end
        if(params[:house])
            golds = rand(2...5)
            session[:gold] += golds
            session[:log].append("You have earned #{golds} golds from the cave!")
        end
        if(params[:casino])
            golds = rand(-50...50)
            session[:gold] += golds
            if golds >=0 
                session[:log].append("You have EARNED #{golds} golds from the casino!")
            end
            if golds < 0
                session[:log].append("You have LOST #{golds} golds from the casino!")
            end
        end
        redirect_to "/"
    end

    def reset 
        session.clear
        redirect_to "/"
    end
end
