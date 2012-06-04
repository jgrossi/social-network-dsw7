class FriendsController < ApplicationController
  
  before_filter :authenticate_user!

  def index
    @users = User.friends(current_user).order('email')
  end

  def create
    @friend = Friend.new
    @friend_id = params[:user_id]
    @friend.friend_id = @friend_id
    @friend.user_id = current_user.id
    respond_to do |format|
      if @friend.save
        format.js
      end
    end
  end

  def destroy
    @friend_id = params[:id]
    @user = User.find(@friend_id)
    @friend = Friend.where("user_id = ? AND friend_id = ?", current_user.id, @friend_id)
    @friend.first.destroy
    respond_to do |format|
      format.js
    end
  end
end
