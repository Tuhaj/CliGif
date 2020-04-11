RSpec.describe CliGif do
  it "has a version number" do
    expect(CliGif::VERSION).not_to be nil
  end

  it "displays correct giphy url" do
  	class Runner
  	  include CliGif
	end
	mock_key="42"
	ENV['GIPHY_API_KEY']=mock_key
	object = Runner.new
	expected = "http://api.giphy.com/v1/gifs/search?q=&api_key=#{mock_key}&limit=1"
    expect(object.prepare_gif_url).to eql(expected)
  end
end
