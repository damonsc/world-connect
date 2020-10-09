# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["AWS_ACCESS_KEY_ID"],        # required
    aws_secret_access_key: ENV["AWS_SECRET_KEY_ID"],        # required
  }
  config.fog_directory  = ENV["AWS_BUCKET"]              # required
end