class Comment < ActiveRecord::Base
  attr_accessible :body, :commentable_name, :commentable_type, :name, :user_id
end
