source "https://rubygems.org"

gem "rails", "~> 3.2.21"
gem "jquery-rails"
gem "haml-rails"
gem "coderay"
gem "http_status_exceptions", "~> 0.3.0"

# Used as a REST client to access the API
gem "ohai", "~> 6.24.2"
gem "chef", "~> 11.18.12"

group(:development) do
  gem 'pry'
  gem 'thin'
end

group(:production) do
  gem "puma"
  gem "therubyracer"
  gem "uglifier"
end
