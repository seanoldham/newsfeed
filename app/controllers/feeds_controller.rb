class FeedsController < ApplicationController

	def index
		@url 		= 'http://blog.seanosaur.com/rss'
		#@feeds = Feedjira::Feed.fetch_and_parse @url
		#@feed 	= @feeds[1]
		@titles = Array.new
		@feed 	= Array.new
		@body		= Array.new
		Feedjira::Feed.fetch_and_parse(@url).entries.each do |e|
			@titles << e.title
			@feed << e.url
			@body << e.summary
		end
	end
end
