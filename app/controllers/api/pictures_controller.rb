class Api::PicturesController < ApplicationController

  # GET /pictures/1.json
  def show
    @picture = Picture.find(params[:id])

    respond_to do |format|
      format.json { render json: @picture }
    end
  end

end
