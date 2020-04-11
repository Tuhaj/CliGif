require "cli_gif/version"
require 'json'

module CliGif
  class Error < StandardError; end
  URL_BASE="http://api.giphy.com/v1/gifs/search"

  def prepare_gif_url
    url = URL_BASE + "?q=#{@input}&api_key=#{ENV['GIPHY_API_KEY']}&limit=1"
    return url
  end
end
