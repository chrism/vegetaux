class SessionsController < ApplicationController  
  def new
    respond_to do |format|
      format.html
      format.js { render layout: false, :content_type => 'text/html' }
    end
  end

  def create
    login = params[:login]
    password = params[:password]
    if (login == ENV['LOGIN_NAME'] && password == ENV['PASSWORD'])
      session[:user] = login
      begin
        redirect_to :back, :notice => "Signed in"
      rescue ActionController::RedirectBackError
        redirect_to root_path, :notice => "Signed in"
      end
    else
      flash.now[:error] = "Couldn't sign in with those details."
      render "new"
    end
  end

  def destroy
    session[:user] = nil
    redirect_to :back, notice: "Signed out"
    rescue ActionController::RedirectBackError
      redirect_to :root, notice: "Signed out"
  end
end