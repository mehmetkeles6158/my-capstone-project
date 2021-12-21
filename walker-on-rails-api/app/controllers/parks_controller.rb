class ParksController < ApplicationController
  def index
    response = HTTP.get("https://developer.nps.gov/api/v1/parks?parkCode=&api_key=#{Rails.application.credentials.park_api_key}")
    park_data = response.parse(:json)
    info = park_data["data"]
    
    

    results = Geocoder.search(params[:address])
    coordinates = results.first.coordinates
    
    
    parks = park_data["data"]
    park_distances = []

    parks.each do |park|
      distance = Geocoder::Calculations.distance_between(coordinates,[park["latitude"].to_f,park["longitude"].to_f]
      )
      park_distances << {distance: distance, park_name: park["fullName"], address: park["addresses"][0]["line1"],directions_info: park["directionsInfo"], weather_info: park["weatherInfo"]}
    end

    sorted_distances = park_distances.sort_by { |k| k[:distance] }
    closest_three_parks = sorted_distances.first(3)

    render json: closest_three_parks


  end
end
