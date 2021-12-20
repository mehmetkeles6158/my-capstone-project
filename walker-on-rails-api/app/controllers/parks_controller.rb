class ParksController < ApplicationController
  def index
    response = HTTP.get("https://developer.nps.gov/api/v1/parks?parkCode=acad&api_key=#{Rails.application.credentials.park_api_key}")
    render json: response.parse
  end
end
