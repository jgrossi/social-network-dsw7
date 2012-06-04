class Post < ActiveRecord::Base
  belongs_to :author, :foreign_key => 'user_id', :class_name => 'User'
  
  def self.updates(current_user)
    friends = User.friends(current_user)
    posts = Post.where("user_id IN (?,?)", friends.map(&:id), current_user.id)
  end
  
end
