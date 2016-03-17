class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Login and redirect to user's show page
    else
      # create an error message
      render 'new'
    end
  end
  
  def destroy
  end
end