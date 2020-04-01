class UsersController < ApplicationController
  def login
    @user = User.new
  end

  def sign_up
    @user = User.new
  end

  def sign_in
    #lookup database find exist user
    user = User.find_by(email:  clean_user[:email],
                        password:  clean_user[:password])
    if user
      session[:go2login] = user.email
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def register
    @user = User.new(clean_user)

    #add new user
    if @user.save
      #save sucessfully

      #todo#encoding password
      #help user login
      session[:go2login] = @user.email
      #email should be unique

      redirect_to "/"
    else
      #fail to save
      render :sign_up
    end

  end

  def logout
    session[:go2login] = nil
    redirect_to root_path
  end



  private
  def clean_user
    params.require(:user).permit( :email, 
                                  :password, 
                                  :password_confirmation)
  end
end
