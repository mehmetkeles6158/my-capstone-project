class ParksController < ApplicationController
  def index
    response = HTTP.get("https://developer.nps.gov/api/v1/parks?parkCode=#{params[:parkCode]}&api_key=#{Rails.application.credentials.park_api_key}")
    park_data = response.parse(:json)
    info = park_data["data"]
    render json: info

    parks = park_data["data"]
    all_coordinates = []
    parks.each do |park|
      all_coordinates << [park["latitude"].to_f,park["longitude"].to_f]
    end

    p "all coordinates"
    p all_coordinates
    p "completed"
    
  end
end
