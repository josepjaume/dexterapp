class FilesController < ApplicationController
  respond_to :json

  def create
    @file = EpisodeFile.create(name: params[:file][:name])
    respond_to do |format|
      format.js { render json: @file }
    end
  end
end
