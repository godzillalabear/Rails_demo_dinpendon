class UsersController < ApplicationController
  def login
  end

  def sign_up
  end

  def register
    # user = params[:user]
    p params[:user][:password]
    p params[:user][:password_confirm]

    if params[:user][:password] == params[:user][:password_confirm]
      redirect_to '/login'
    else
      redirect_to '/sign_up'
    end
    # render html: params[:user]
  end
end
