class AdminController < ApplicationController
  def login
  end
  
  def logout
  end
  
  
  def create
    if params[:username]=="admin" && params[:password]=="admin"
      session[:admin] = params[:username]
      if params[:remember_me] === '1'
        cookies[:username]  = params[:username]
      else 
        cookies.delete(:username)
      end
      redirect_to products_path
    else
      flash[:error] = "Invalid credentials Try again"
      render :login
    end
  end
  
  def destroy
    session[:admin] = nil
    cookies.delete(:username)
    redirect_to admin_login_path
  end
end
  