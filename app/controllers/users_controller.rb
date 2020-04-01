class UsersController < ApplicationController
  def login
  end

  def sign_up
    @user = User.new
  end

  def register
    @user = User.new(clean_user)

    if clean_user[:password] == clean_user[:password_confirm]
      
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

    else
      render :sign_up
      # redirect_to '/sign_up'
    end

  end



  private
  def clean_user
    params.require(:user).permit( :email, 
                                  :password, 
                                  :password_confirm)
  end
end
