class UsersController < ApplicationController

  before_filter :authenticate_user!
  
  def index
    if(!params[:user].nil? && !params[:user][:name].nil?)
      @query = params[:user][:name]
      words = @query.split(' ').join('%');
      @users = User.where("name LIKE ?", '%' + words + '%')
    else
      @users = User.not_friends(current_user).order('email')
    end
  end
  
  def show
    @user = User.find(params[:id])
    @message = Message.new
  end
  
end
