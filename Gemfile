source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '7.0.4'
# Use mysql as the database for Active Record
gem 'mysql2', '~> 0.5'
gem 'puma', '~> 5.6'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'ranked-model'
gem 'slim-rails'
gem 'msgpack', '~> 1.4', '>= 1.4.2'
gem "aws-sdk-s3", require: false
gem 'image_processing', '~> 1.2'
gem 'unicorn'
gem 'net-smtp'
gem 'jsbundling-rails'
gem 'turbo-rails'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 4.0.2'
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Use Redis for Action Cable
gem "redis", "~> 4.0"
