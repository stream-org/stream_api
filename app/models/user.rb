class User < ActiveRecord::Base
  def self.authenticate(params)
    # params = { username: 'ashdfhasdf', password: 'asdhfashdf'}
    where(first: params[:first], password: params[:password]).first
  end
end
