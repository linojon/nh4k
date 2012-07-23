source 'https://rubygems.org'

gem 'rails', '3.2.3'
gem 'jquery-rails'
gem 'haml-rails'
gem 'simple_form'
gem 'decent_exposure'
gem 'squeel'
gem 'redcarpet'
gem 'bcrypt-ruby', '~> 3.0.0'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  #gem 'twitter-bootstrap-rails'
  gem 'bootstrap-sass'
end

group :test, :development do
  gem 'debugger'
  gem 'sqlite3'

  gem "rspec-rails"
  gem 'rspec-instafail'
  gem 'database_cleaner'
  
  gem "capybara"
  gem 'capybara-webkit'
  gem "selenium-webdriver"
  gem 'launchy' # provides save_and_open_page
  
  gem 'factory_girl_rails'
  gem 'faker'
end

group :development do
  gem 'heroku'
end

group :production do
  gem 'thin'
  gem 'pg'
end
