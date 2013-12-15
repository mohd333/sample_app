class SessionsController < ApplicationController
  def new
    @user = User.new

  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      sign_in user
      redirect_to user
    else
      render 'new'
    end

  end

  def destroy

  end

end
