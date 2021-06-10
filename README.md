# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
`2.7.1`
* System dependencies
```source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'
gem 'faker'
gem 'active_storage_validations'
gem 'mini_magick'
gem 'mini_portile'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
 gem 'bcrypt', '~> 3.1.7'

 gem 'devise-jwt'

 gem 'rack-cors'

 gem 'jsonapi-rails'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible

# Use devise gem for create users, users can sell and buy properties
gem 'devise'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "aws-sdk-s3", require: false
gem 'dotenv-rails'
```
* Configuration
`bundle install`
* Database creation
`rails db:create`
* Database initialization
`rails db:migrate db:seed`
* How to run the test suite
`rails s -p 3001`
* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
This repository is already deployed…

### Features 
You can also check our front-end repository [here](https://github.com/Fr0ggym4n/ImmoCoin).

## Made with ❤️ by:

- [@flores34000](https://github.com/flores34000)
- [@Janaina](https://github.com/Janainaf)
- [@chendanet](https://github.com/chendanet)
- [@YouCoding6](https://github.com/YouCoding6)
- [@Fr0ggym4n](https://github.com/Fr0ggym4n)
