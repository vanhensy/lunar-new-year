class ImageUploader

	def self.send(dataURL)
		image_data = dataURL.split(",").second
		response = HTTParty.post('https://api.imgur.com/3/upload', 
														 headers: {"Authorization" => "Client-ID ec184716f3830a1"},
														 body: {"image" => image_data })
		short_url = response["data"]["link"]
	end

end