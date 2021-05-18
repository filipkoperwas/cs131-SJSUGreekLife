source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', github: 'rails/rails'

gem 'bcrypt'
gem 'bootsnap', '~> 1.1', '>= 1.1.5', require: false
gem 'coffee-rails', '~> 4.2'
gem 'gmaps4rails'
gem 'jbuilder', '~> 2.5'
gem 'pg'
gem 'puma', '~> 4.3'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'underscore-rails'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'awesome_print'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'factory_bot_rails'
  gem 'selenium-webdriver'
end

group :development do
  gem 'annotate'
  gem 'chromedriver-helper'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
  
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

#gem for bootstrap
gem 'bootstrap', '~> 4.0.0.alpha6'

#gem for paperclip
gem "paperclip", "~> 5.0.0"


