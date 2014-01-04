require './twitter_auth.rb'

class Test

	##########
	#Modules
	##########
	#extending the module  for establishing the authentication
	extend TwitterAuth


	##########
	#Methods
	##########
	#get top 50 tweets of tag or topic
	def get_tweets(keyword,count = 50) 
		puts "Fetching Tweets for  '#{keyword}' "
		client = Test.establish_authentication
		begin #searching recent tweets as per count default is 50
			res = client.search(keyword, :count => count, :result_type => "popular").collect do |tweet|
				"#{tweet.user.screen_name}: #{tweet.text}"
			end
		rescue  Twitter::Error::BadRequest => e
			puts e
		rescue => e
			puts "Something Went Wrong"
		ensure
			puts "Connection Closed "
		end
		puts res
	end
end

#asking user to insert topic/tag
puts "Please provide a tag/topic : "
keywrd = gets


result = Test.new
result.get_tweets(keywrd)
