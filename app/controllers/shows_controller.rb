class ShowsController < ApplicationController
  respond_to :html, :json

  def index
    @shows = [
      Show.new(name: "Dexter"),
      Show.new(name: "Polla"),
      Show.new(name: "Joder"),
      Show.new(name: "Puta"),
    ]
    respond_with(@shows)
  end
end
