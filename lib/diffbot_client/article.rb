require 'httparty'
require 'json'
module DiffbotClient
  class Article
    include HTTParty
    self.base_uri 'http://api.diffbot.com'
    self.default_timeout 5

    def get(options)
	  options = {:query => {:token => 'b395cbccaede5e80b564633092bda889'}.merge!(options)}
	  unless error_response = invalid_params?(options[:query])
	    response = self.class.get('/v2/article',options)
        if response.success?
          JSON.parse(response.body)
        else
          {:error => "Failed to fetch the content from the url", :errorCode => 500}  
        end
	  else
	    JSON.parse(error_response)
	  end
    end

    def invalid_params?(options)
      error_message = nil
      error_message = {:error => "Not authorized API token.",:errorCode => 401} if options[:token].nil?
      error_message = {:error => "Missing url query string argument",:errorCode => 500} if options[:url].nil?
      error_message
    end
  end
end