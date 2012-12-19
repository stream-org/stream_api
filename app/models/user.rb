class User < ActiveRecord::Base
  attr_accessible :first, :last, :phone, :password
  validates_presence_of :first, :last, :phone, :password
  validates_uniqueness_of :phone
  has_many :pictures

  def attributes
    super.except('password')
  end

  def self.authenticate(params)
    # params = { phone: '5550053321', password: 'asdhfashdf'}
    sanitized_params = params.slice(:phone, :password)
    where(sanitized_params).first
  end
end
