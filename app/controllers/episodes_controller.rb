class EpisodesController < ApplicationController
  respond_to :json, :html

  def create
    @episode = Episode.parse(params[:episode][:name])
    respond_to do |format|
      format.js { render json: @episode }
    end
  end

  def index
    @episodes = Episode.all
    respond_with(@episodes)
  end

end
