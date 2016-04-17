class UserController < ApplicationController

    def user_register
        redirect_to :controller => :user_register
        flash[:notice] = "Please enter your details:"
    end
    
    def admin_login
        session[:login] = 1
        session[:cart] = nil
        flash[:notice] = "Admin Login Successful!"
        redirect_to :controller => :items
    end
    
    def user_login
        redirect_to :controller => :user_login
    end
    
    
    def logout
        session[:login] = nil
        session[:cart] = nil
        flash[:notice] = "You have successfully logged out!"
        redirect_to :controller => :items
    end


 


end
