class UsersController < ApplicationController
  def sign_in
    # params = { user: { username: 'ashdfhasdf', password: 'asdhfashdf'} }
    user = User.authenticate(params[:user])
    respond_to do |format|
      format.json { render(json: user) }
      format.html
    end

  end
end
