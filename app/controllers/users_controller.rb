class UsersController < ApplicationController
  def sign_in
    # params = { user: { phone: '5550053321', password: 'asdhfashdf'} }
    @user = User.authenticate(params[:user])

    # success: returns code 200 with user in json format
    # failure: returns code 200 with null
    respond_to do |format|
      format.json { render :json => @user }
    end
  end

  def create
    @user = User.new(params[:user])

    # success: returns code 200 with user object as json
    # failure: returns code 422 with user errors as json eg {"phone"=>["has already been taken"]}
    respond_to do |format|
      if @user.save
        format.json  { render :json => @user,
                      :status => :created, :location => @user }
      else
        format.json  { render :json => @user.errors,
                      :status => :unprocessable_entity }
      end
    end
  end
end
