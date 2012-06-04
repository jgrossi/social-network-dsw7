class Message < ActiveRecord::Base
  
  belongs_to :addressee, :foreign_key => 'destiny_id', :class_name => 'User'
  belongs_to :author, :foreign_key => 'author_id', :class_name => 'User'
  
end
