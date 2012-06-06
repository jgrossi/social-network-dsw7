class MessagesController < ApplicationController

  def index
    @messages = Message.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @messages }
    end
  end

  def create

    @user = User.find(params[:user_id])
    @message = @user.received_messages.build(params[:message])
    @message.author = current_user

    respond_to do |format|
      if @message.save
        format.html { redirect_to @user, :notice => 'Message was successfully created.' }
        format.json { render :json => @user, :status => :created, :location => @user }
        format.js
      else
        format.html { render :action => @user }
        format.json { render :json => @message.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy

    respond_to do |format|
      format.html { redirect_to messages_url }
      format.json { head :no_content }
      format.js
    end
  end
end
