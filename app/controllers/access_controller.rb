class AccessController < ApplicationController
 
 def index
    # display text & links
  end

  def login
    # login form
  end
  def attempt_login
  if params[:username].present? && params[:password].present?
   found_user = User.where(:username => params[:username]).first
     if found_user
      
     end
  end
  if 
     # mark user as logged in
     flash[:notice] = "You are now logged in."
     redirect_to(:action => 'index')
  else
     flash[:notice] = "Invalid username/password combination."
     redirect_to(:action => 'login')
  end
end
  def logout
    # TODO mark user as Logged out
    flash[:notice] = "Logged out"
    redirect_to(:action =>"login")
  end
end
