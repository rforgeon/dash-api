class Api::YelpController < ApplicationController

  require 'yelp'
  require 'json'


  def search (params = {})
    # @params = params
    var lat = params['lat']
    var lng = params['lng']
    coordinates = {latitude: lat, longitude: lng }
    render json: Yelp.client.search_by_coordinates(coordinates, { limit: 3, radius_filter: 30 })
  end

  def search_recs (params = {})
    # @params = params
    var location = params['location']
    var category = params['category']

    render json: Yelp.client.search(location, { limit: 3, term: category })

  end

  # def params
  #   @params
  # end


end
