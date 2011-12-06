class ShowsController < ApplicationController
  respond_to :html, :json

  def index
    @shows = Show.all
    respond_with(@shows)
  end
end
