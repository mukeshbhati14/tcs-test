require 'twitter' #Gem required for accessing the REST api for twitter

#Module for establishing connection/Authentication with twitter
module TwitterAuth

	############
	# Constants
	############
	YOUR_CONSUMER_KEY = "4opo17gVGy4xqQuqJv70gA"
	YOUR_CONSUMER_SECRET = "gj4ChNbBHTkFY0jIppj0FP6UqJh6ZpbMdblZ4La81U"
	YOUR_ACCESS_TOKEN = "95188149-cuAsRkpPcMezy7CtEYcmsNCFvG8HiiVMWs8YOI6UD"
	YOUR_ACCESS_SECRET = "Sa4bZPZJGAOZbRcENXeK0DtQV3qOkebQVUQkpfGyxmq67"


	############
	# Methods
	############

	#methos which creates connection with twitter
	def establish_authentication
		 Twitter::REST::Client.new do |config|
		  config.consumer_key            =  YOUR_CONSUMER_KEY
		  config.consumer_secret        =  YOUR_CONSUMER_SECRET
		  config.access_token              =  YOUR_ACCESS_TOKEN
		  config.access_token_secret  =  YOUR_ACCESS_SECRET
		end
	end
end