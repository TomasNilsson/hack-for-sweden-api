require 'digest/sha1'

class GooglePlace
  include HTTParty
  base_uri "https://maps.googleapis.com/maps/api/place"
 
  # Text Search Service returns information about a set of places based on a string — for example "pizza in New York"
  def self.text_search(query)
    get("/textsearch/json?query="+query+"&key="+ENV["google_places_api_key"])
  end
end