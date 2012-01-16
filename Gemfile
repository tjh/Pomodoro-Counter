source 'http://rubygems.org'

gem 'rails'

gem 'json'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

gem "pg", :group => :production

group :development do
  gem 'ruby-debug'
  gem 'heroku_san'
end

group :test, :development do
  gem 'mysql2'
  gem 'rspec-rails'
end

group :test do
  gem 'cucumber-rails'
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
end
