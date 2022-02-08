source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.5'

gem 'rails', '~> 6.1.4'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.4', require: false

gem 'redis', '~> 4.0'
gem 'local_time'
gem 'devise'
gem 'devise_invitable'
gem 'rolify'
gem 'cancancan'

gem 'immutable-struct'

gem 'sidekiq'
gem 'sinatra', require: nil

gem 'gravatar_image_tag'

gem 'money-rails'

gem 'slack-notifier'

group :development, :test do
gem 'byebug', platforms: [:mri]
gem 'rspec-rails'
gem 'rails-controller-testing'
gem 'capybara'
gem 'simplecov', :require => false, :group => :test
gem "factory_bot_rails"
gem 'faker'
gem 'webdrivers'
end

group :development do
gem 'web-console', '>= 3.3.0'
gem 'listen', '>= 3.0.5', '< 3.2'
gem 'spring'
gem 'spring-watcher-listen', '~> 2.0.0'
gem "letter_opener"
gem 'foreman'
end

 gem 'rack-cors', :require => 'rack/cors'

# group :development, :test do
#   gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
# end

# group :development do
#   # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
#   gem 'web-console', '>= 4.1.0'
#   # Display performance information such as SQL time and flame graphs for each request in your browser.
#   # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
#   gem 'rack-mini-profiler', '~> 2.0'
#   gem 'listen', '~> 3.3'
#   # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
#   gem 'spring'
# end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
