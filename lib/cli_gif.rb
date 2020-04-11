require "cli_gif/version"
require 'json'
require 'rest-client'

module CliGif
  class Error < StandardError; end
  URL_BASE="http://api.giphy.com/v1/gifs/search"

  def prepare_request_url(query)
    url = URL_BASE + "?q=#{query}&api_key=#{ENV['GIPHY_API_KEY']}&limit=1"
    return url
  end

  def get_response(query)
  	url = prepare_request_url(query)
  	response = RestClient.get(url)
  	JSON.parse(response)
  end

  def get_first_search_result(query)
  	response = get_response(query)
  	gif = response['data'][0]
  	gif['url']
  end
end
