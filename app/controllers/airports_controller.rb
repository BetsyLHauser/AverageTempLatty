class AirportsController < ApplicationController

  def index
    @airports = Airport.all
  end

  def show
    @airport = Airport.find_by_id(params[:id])
  end

  def new
    @airport = Airport.new
  end

  def create
    @airport = Airport.new
    @airport.abbrev = params[:abbrev]
    @airport.city = params[:city]
    
    if @airport.save
            redirect_to airports_url
          else
      render 'new'
    end
  end

  def edit
    @airport = Airport.find_by_id(params[:id])
  end

  def update
    @airport = Airport.find_by_id(params[:id])
    @airport.abbrev = params[:abbrev]
    @airport.city = params[:city]
    
    if @airport.save
            redirect_to airports_url
          else
      render 'edit'
    end
  end

  def destroy
    @airport = Airport.find_by_id(params[:id])
    @airport.destroy
        redirect_to airports_url
      end
end
