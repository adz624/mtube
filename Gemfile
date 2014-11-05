source 'https://rubygems.org'

gem 'rails', '4.1.7'
gem 'mysql2'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'

gem 'spring',        group: :development

gem 'bootstrap-sass-rails'
gem 'bootstrap_form'

# Image uploader
gem 'carrierwave'
gem 'mini_magick'


# 所有環境都綁，包含 production
gem "pry-rails"
gem "awesome_print", require: false

group :development, :test do # 也包含 test 是為了讓寫 test case 時也可以 debug
  gem "pry-plus"
  gem "hirb", require: false
  gem "hirb-unicode", require: false
  gem 'simplecov', require: false
  gem "pry-remote"
  gem 'capybara'
  gem 'poltergeist'
  gem 'parallel_tests'
end

group :development do
  gem 'capistrano', '~> 2.15.5', require: false
  gem 'rvm-capistrano'
  gem 'binding_of_caller'
  gem 'better_errors'
  gem 'powder'
  gem 'database_cleaner'
  gem 'rspec-rails', '~> 3.0.0'
  gem 'colorize'
end