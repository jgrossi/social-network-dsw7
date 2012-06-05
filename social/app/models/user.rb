class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :avatar
  
  after_create :send_mail
  
  has_many :received_messages, :foreign_key => 'destiny_id', :class_name => 'Message'
  has_many :sent_messages, :foreign_key => 'author_id', :class_name => 'Message'
  has_many :friends
  has_many :posts
  
  has_attached_file :avatar, :styles => { :medium => "300x300>" , :thumb => "100x100" }
  
  def avaiable_name
    if self.name.empty?
      name = self.email
    else
      name = self.name
    end
  end
  
  def send_mail
    UserMailer.welcome_message(self).deliver
  end
  
  def self.not_friends(current_user)
    friends = Friend.where("user_id = ?", current_user.id)
    if friends.any? 
      users = User.where('id NOT IN (?,?)', friends.map(&:friend_id), current_user.id)
    else 
      User.where("id <> ?", current_user.id) 
    end
  end
  
  def self.friends(current_user)
    friends = User.where("id IN (?)", Friend.where("user_id = ?", current_user.id).map(&:friend_id))
  end
  
  def friend?(current_user)
    Friend.where("user_id = ? AND friend_id = ?", current_user.id, self.id).any?
  end
  
end
