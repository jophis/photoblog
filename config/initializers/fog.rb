CarrierWave.configure do |config|
	config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave'
	config.fog_credentials = {
		:provider								=> "AWS",
		:aws_access_key_id  		=> ENV['AWS_ACCESS_KEY_ID'],
		:aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],	
		:region => 'us-east-1'
	}

	config.fog_directory = ENV['AWS_BUCKET']
	config.fog_public    = false
end