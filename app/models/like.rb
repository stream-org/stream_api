class Like < ActiveRecord::Base
  attr_accessible :picture_id, :user_id
  belongs_to :picture
  belongs_to :user
end
