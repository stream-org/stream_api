class StreamsController < ApplicationController

  # GET /streams/1.json
  def show
    @stream = Stream.find(params[:id])

    # returns 200 with either the stream object jsonified or null
    # TODO: include pictures with this response like so http://stackoverflow.com/questions/611931/render-json-does-not-accept-options
    respond_to do |format|
      format.json { render json: @stream.to_json(:include => :pictures) }
    end
  end

  # POST /streams.json
  def create
    @stream = Stream.new(params[:stream])

    # success: returns code 200 with stream object as json
    # failure: returns code 422 with stream errors as json
    respond_to do |format|
      if @stream.save
        format.json { render json: @stream, status: :created, location: @stream }
      else
        format.json { render json: @stream.errors, status: :unprocessable_entity }
      end
    end
  end
end
