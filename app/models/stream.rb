class Stream < ActiveRecord::Base
  attr_accessible :name, :owner_id
  belongs_to :owner, :class_name => User
  has_many :pictures

  # TODO: use sql counter cache
  delegate :count, to: :pictures, prefix: true

  def participants_count
    # TODO: add participants count here (probably use sql counter cache)
    0
  end

  def last_picture
    pictures.last
  end

end
