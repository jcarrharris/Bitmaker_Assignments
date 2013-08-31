require 'json'
require 'open-uri'

class HtmlGenerator
	def index
		puts "HTMLGenerator: index"
		raw_response = open("http://lcboapi.com/products").read

		#Parse JSON-formatted text into a Ruby Hash
		parsed_response = JSON.parse(raw_response)

		#Return the actual result data from the response, ignoring metadata
		products = parsed_response["result"]

		puts products
	end

	def show(product_id)
		# write the same as the index method but passing a product_id in		
	end
end
