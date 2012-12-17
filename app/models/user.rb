class User < ActiveRecord::Base
  def self.authenticate(params)
    # params = { phone: '5550053321', password: 'asdhfashdf'}
    sanitized_params = params.slice(:phone, :password)
    where(sanitized_params).first
  end
end
