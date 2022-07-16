source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'rails', '~> 6.1.4', '>= 6.1.4.4'
gem 'pg', '~> 1.1'
gem 'bootsnap', '>= 1.4.4', require: false
gem "active_model_serializers", "~> 0.10.13"
gem "devise_token_auth", "~> 1.2"
gem "haml-rails", "~> 2.0"
gem 'sass-rails', '>= 6'
gem 'simple_form'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'puma', '~> 5.0'
gem 'carrierwave', '~> 2.0'
gem 'carrierwave-aws', '~> 1.0'
gem "mini_magick"
gem 'rack-cors'
gem 'figaro'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'spring'
  gem "letter_opener", "~> 1.8"
  gem 'capistrano'
  gem 'capistrano3-puma'
  gem 'capistrano-rails', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rvm'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

