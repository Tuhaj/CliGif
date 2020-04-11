module CliGif
  VERSION = "0.1.0"

  require 'json'

  URL_BASE="http://api.giphy.com/v1/gifs/search"

  @input = ARGF.read

  def prepare_gif_url
    url = URL_BASE + "?q=#{@input}&api_key=#{ENV['API_KEY']}&limit=1"
    puts url
  end
end
