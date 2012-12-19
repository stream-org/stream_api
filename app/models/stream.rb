class Stream < ActiveRecord::Base
  attr_accessible :name, :owner_id
  belongs_to :owner, :class_name => User
  has_many :pictures
end
