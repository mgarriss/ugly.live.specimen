source 'http://rubygems.org'

gem 'rails', '3.1.3'

gem 'jdbc-sqlite3'
gem 'activerecord-jdbcsqlite3-adapter'
gem "haml-rails"
gem 'childprocess'
gem 'jquery-rails'
# gem 'jruby-ssl'

group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

group :test do
  gem 'turn', '~> 0.8.3', :require => false
end

group :test, :development do
  gem "rspec-rails", "~> 2.6"
  # gem "rb-fsevent", require:false if RUBY_PLATFORM =~ /darwin/i
  gem "capybara"
  gem "factory_girl_rails"
  gem "database_cleaner"
  # gem "launchy"
  # gem "guard-rspec"
  # gem "growl"
end

