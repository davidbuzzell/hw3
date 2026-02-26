class PlacesController < ApplicationController

  def index
    @places = Place.all
    @num_places = Place.count
  end

  def show
    @place = Place.find_by({ "id" => params["id"] })
    @entries = Entry.where({ "place_id" => @place["id"] })
  end

  def new

  end

  def create
    @place = Place.new
    @place["name"] = params["name"]
    @place.save

    redirect_to "/places"
  end

  def edit
    redirect_to "/places"
  end

  def update
    redirect_to "/places"
  end

  def destroy
    redirect_to "/places"
  end

end
