class ParksController < ApplicationController
  def index
    response = HTTP.get("https://developer.nps.gov/api/v1/parks?parkCode=#{params[:parkCode]}&api_key=#{Rails.application.credentials.park_api_key}")
    park_data = response.parse(:json)
    info = park_data["data"]
    render json: info
    
  end
end
