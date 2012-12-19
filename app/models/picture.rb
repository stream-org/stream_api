class Picture < ActiveRecord::Base
  attr_accessible :pic_url, :stream_id, :tiny_pic_url, :user_id
  belongs_to :user
  belongs_to :stream
end
