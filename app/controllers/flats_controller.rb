require "open-uri"

class FlatsController < ApplicationController
  before_action :set_flats

  URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"

  def index
  end

  def show
    # which flat is asked for?
    id = params[:id]
    # store in variable
    @flat = @flats.find { |flat| flat['id'] == id.to_i }
    # display in view
  end

  def set_flats
    @flats = JSON.parse(open(URL).read)
  end
end
