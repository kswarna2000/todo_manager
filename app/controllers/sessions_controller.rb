class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render plain: "You have entered Correct pasword!"
    else
      render plain: "Incorrect password!"
    end
  end
end
