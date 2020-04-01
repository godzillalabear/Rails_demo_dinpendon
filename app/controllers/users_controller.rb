class UsersController < ApplicationController
  def login
  end

  def sign_up
    @user = User.new
  end

  def register
    @user = User.new(clean_user)

    #add new user
    if @user.save
      #save sucessfully

      #todo#encoding password
      #todo#help user login

      redirect_to "/"
    else
      #fail to save
      render :sign_up
    end

  end



  private
  def clean_user
    params.require(:user).permit( :email, 
                                  :password, 
                                  :password_confirmation)
  end
end
