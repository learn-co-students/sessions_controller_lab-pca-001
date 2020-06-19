class SessionsController < ApplicationController
  def new
  end

  def create
    name = params[:name]
    redirect_to login_path if name.nil?
    redirect_to login_path elsif name.empty?

    session[:name] = name
    redirect_to "/"
  end

  def destroy
    session.delete :name
  end
end
