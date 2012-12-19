class Api::PicturesController < ApplicationController

  # GET /pictures/1.json
  def show
    @picture = Picture.find(params[:id])

    respond_to do |format|
      format.json { render json: @picture.to_json(:include => [:user], :methods => [:likes_count]) }
    end
  end

end
