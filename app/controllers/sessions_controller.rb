class SessionsController < ApplicationController

  def new
    # nothing to do here!
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
  end

end