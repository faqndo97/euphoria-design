source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'actionpack-page_caching'
gem 'activestorage-cloudinary-service'
gem 'administrate'
gem 'administrate-field-active_storage'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'devise'
gem 'font-awesome-rails'
gem 'google-cloud-storage'
gem 'image_processing', '~> 1.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3'
gem 'pundit', '~> 1.1.0'
gem 'rails', '~> 6.0.0.rc1'
gem 'sass-rails', '~> 5'
gem 'scout_apm'
gem 'sentry-raven'
gem 'turbolinks', '~> 5'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem "valid_email2"
gem 'webpacker', '~> 4.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'guard-livereload', '~> 2.5', require: false
  gem 'pry-byebug'
  gem 'pry-rails'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'shoulda', '~> 3.5'
  gem 'shoulda-matchers', '~> 2.0'
  gem 'webdrivers'
end
