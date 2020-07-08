class Api::PropertiesController < ApplicationController

  def index
    render json: Property.available
  end

  def city
    render json: Property.by_city(params[:city])
  end
end
