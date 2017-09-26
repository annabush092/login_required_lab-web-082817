class SessionsController < ApplicationController
  def new
    #render new view (login)
  end

  def create
    if !!params[:name] && params[:name].length>0
      session[:name] = params[:name]
      redirect_to welcome_path
    else
      redirect_to login_path
    end
  end

  def show
    redirect_to login_path unless session.include?(:name)
    #render :show
  end

  def destroy
    if !!current_user
      session.delete(:name)
    end
    redirect_to login_path
  end

end
