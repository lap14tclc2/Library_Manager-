source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'pg', '~> 0.20.0'
gem 'pry', '~> 0.10.4'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '3.1.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'bcrypt', '3.1.7' 

gem 'sdoc', '~> 0.4.2'

gem 'therubyracer', '~> 0.12.3'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'faker', :require => false

gem 'execjs', '~> 2.7'

gem 'gravatar_image_tag', '~> 1.2'

gem 'gravatar', '~> 1.0'

gem 'cancancan', '~> 1.16'

gem 'will_paginate', '~> 3.1', '>= 3.1.5'

gem 'bootstrap-will_paginate', '~> 0.0.11'

gem "rails_12factor", group: :production

gem 'simple_form', '~> 3.4.0'

gem 'devise', '~> 4.2', '>= 4.2.1'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # gem 'therubyracer', '~> 0.12.2'

  # gem 'libv8', '~> 4.5', '>= 4.5.95.5'

  gem 'execjs', '~> 2.7'

  gem "rails_12factor", group: :production

  gem 'gravatar_image_tag', '~> 1.2'

  gem 'gravatar', '~> 1.0'

  

  gem 'cancancan', '~> 1.16'

  gem 'will_paginate', '~> 3.1', '>= 3.1.5'

  gem 'bootstrap-will_paginate', '~> 0.0.11'

end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]