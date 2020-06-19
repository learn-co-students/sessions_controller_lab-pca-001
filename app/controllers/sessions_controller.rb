class SessionsController < ApplicationController
  def new
  end

  def create
    name = params[:name]

    if name.nil?
      redirect_to login_path
    elsif name.empty?
      redirect_to login_path
    else
      session[:name] = name
      redirect_to "/"
    end
  end

  def destroy
    session.delete :name
  end
end
