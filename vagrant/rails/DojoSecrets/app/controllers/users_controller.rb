class UsersController < ApplicationController
    skip_before_action :require_login, only:[:new, :create]
    
    def index 
        
    end
    
    def new

    end 

    def show 

    end 

    def edit 

    end
    
    def create 

    end

    def update

    end

    def destory

    end 

end
