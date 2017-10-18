# source 'https://rubygems.org'

# git_source(:github) do |repo_name|
#   repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
#   "https://github.com/#{repo_name}.git"
# end

# # Rails Default

# # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
# gem 'rails', '5.1.4'
# # Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# # Use Puma as the app server
# gem 'puma', '~> 3.7'
# # Use SCSS for stylesheets
# gem 'sass-rails', '~> 5.0'
# # Use Uglifier as compressor for JavaScript assets
# gem 'uglifier', '>= 1.3.0'
# # See https://github.com/rails/execjs#readme for more supported runtimes
# # gem 'therubyracer', platforms: :ruby

# # Use CoffeeScript for .coffee assets and views
# gem 'coffee-rails', '~> 4.2'
# # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
# # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# # Use Redis adapter to run Action Cable in production
# # gem 'redis', '~> 3.0'
# # Use ActiveModel has_secure_password
# # gem 'bcrypt', '~> 3.1.7'

# # Use Capistrano for deployment
# # gem 'capistrano-rails', group: :development

# # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# group :development, :test do
#   # Call 'byebug' anywhere in the code to stop execution and get a debugger console
#   gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
#   # Adds support for Capybara system testing and selenium driver
#   gem 'capybara', '~> 2.13'
#   gem 'selenium-webdriver'
# end




# # Learn Rails

# # Help to use Rails without db
# gem 'activerecord-tableless'

# # Configuration Framework
# gem 'figaro'

# # Access to the MailChimp API
# gem 'gibbon'

# # Use Google Drive spreadsheets for data storage
# gem 'google_drive'

# # Use for static pages like "about"
# gem 'high_voltage'

# # Use to create forms easily
# gem 'simple_form'

# # Provides jQuery and the jQuery-ujs driver for your Rails
# gem 'jquery-rails'

# # Use for front-end framework
# gem 'compass-rails' # Support
# gem 'zurb-foundation' # Framework


# # Specifying a group for development or testing ensures a gem is not loaded in production,
# # reducing the application’s memory footprint.
# group :development do
#   # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
#   gem 'web-console', '>= 3.3.0' # Existing 

#   # New 

#   # Use for better error tracking
#   gem 'better_errors'

#   # Use to suppress distracting messages in the log
#   # gem 'quiet_assets'

#   # Use to generate application layout files
#   gem 'rails_layout'
# end

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.3.3'
gem 'rails', '~> 5.1.2'

# Rails defaults
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# learn-rails
gem 'bootstrap-sass'
gem 'gibbon'
gem 'high_voltage'
gem 'jquery-rails'
group :development do
  gem 'better_errors'
  gem 'rails_layout'
end
group :development, :test do
  gem 'sqlite3'
end
group :production do
  gem 'pg'
end
group :test do
  gem 'minitest-spec-rails'
end
# # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
