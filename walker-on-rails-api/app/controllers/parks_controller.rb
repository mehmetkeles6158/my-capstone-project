class ParksController < ApplicationController
  def index
    response = HTTP.get("https://developer.nps.gov/api/v1/parks?parkCode=acad&api_key=hqEy2jdA2hNCsDg6NpPeeedojOnkEWfiRuDlndfy")
    render json: response.parse
  end
end
