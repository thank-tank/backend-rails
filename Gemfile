source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'
gem 'rails',                    '~> 6.0.3', '>= 6.0.3.2'
gem 'bootstrap-sass',           '3.4.1'
gem 'puma',                     '~> 4.1'
gem 'sass-rails',               '>= 6'
gem 'webpacker',                '~> 4.0'
gem 'turbolinks',               '~> 5'
gem 'jbuilder',                 '~> 2.7'
gem 'bcrypt',                   '3.1.13'
gem 'bootsnap',                 '>= 1.4.2', require: false
gem 'pg'

group :development, :test do
  gem 'sqlite3',                  '~> 1.4'
  gem 'byebug',                 platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console',            '>= 3.3.0'
  gem 'listen',                 '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen',  '~> 2.0.0'
end

group :test do
  gem 'capybara',               '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem 'minitest'
  gem 'minitest-reporters'
  gem 'guard'
  gem 'guard-minitest'
  gem 'rails-controller-testing'
end
