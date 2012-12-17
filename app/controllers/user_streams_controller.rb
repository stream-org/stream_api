class UserStreamsController < ApplicationController

  # GET /streams.json
  def index
    @streams = Stream.where(owner_id: params[:user_id])

    # returns 200 with array of user objects (or empty array)
    # TODO: add # participants, # of pics, and most recent pic methods to response
    respond_to do |format|
      format.json { render json: @streams }
    end
  end

end
