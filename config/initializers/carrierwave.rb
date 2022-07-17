CarrierWave.configure do |config|
  config.storage    = :aws
  config.aws_bucket = 'bucketfree-images'
  config.aws_acl    = 'private'
  config.aws_authenticated_url_expiration = 60 * 60 * 24 * 7
  config.aws_attributes = -> { {
    expires: 1.week.from_now.httpdate,
    cache_control: 'max-age=604800'
  } }

  config.aws_credentials = {
    access_key_id:     ENV['aws_access_key_id'],
    secret_access_key: ENV['aws_secret_access_key'],
    region:            'us-east-2',
    stub_responses:    Rails.env.test?
  }
end