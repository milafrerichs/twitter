require 'twitter'
require 'sinatra'
require 'haml'


	

get '/' do
	haml :index, :format => :html5 
end
get '/:name' do |n|
	@client = Twitter::Client.new(
	  :consumer_key => "#####",
	  :consumer_secret => "#####",
	  :oauth_token => "#####",
	  :oauth_token_secret => "#####"
	)
	@user = @client.user(n)
	haml :user, :format => :html5 
end
get '/:name/tweets' do |n|
	@client = Twitter::Client.new(
	  :consumer_key => "#####",
	  :consumer_secret => "#####",
	  :oauth_token => "#####",
	  :oauth_token_secret => "#####"
	)
	
	@tweets = @client.user_timeline(n)
	haml :tweets, :format => :html5 
	
end


