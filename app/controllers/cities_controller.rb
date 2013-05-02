class CitiesController < ApplicationController

  def index
    @cities = City.all
  end

  def show
    @city = City.find_by_id(params[:id])
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new
    @city.name = params[:name]
    @city.airport_id = params[:airport_id]
    @city.temp_id = params[:temp_id]
    
    if @city.save
            redirect_to cities_url
          else
      render 'new'
    end
  end

  def edit
    @city = City.find_by_id(params[:id])
  end

  def update
    @city = City.find_by_id(params[:id])
    @city.name = params[:name]
    @city.airport_id = params[:airport_id]
    @city.temp_id = params[:temp_id]
    
    if @city.save
            redirect_to cities_url
          else
      render 'edit'
    end
  end

  def destroy
    @city = City.find_by_id(params[:id])
    @city.destroy
        redirect_to cities_url
      end
end
