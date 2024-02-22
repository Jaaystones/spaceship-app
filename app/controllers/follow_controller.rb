class FollowsController < ApplicationController
    def create
      @user = User.find(params[:user_id])
      current_user.followees << @user
      redirect_to @user, notice: 'User followed successfully.'
    end
  
    def destroy
      @user = User.find(params[:user_id])
      current_user.followees.delete(@user)
      redirect_to @user, notice: 'User unfollowed successfully.'
    end
  end
  