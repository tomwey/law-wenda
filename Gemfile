source 'http://ruby.taobao.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'devise'
# send email async
gem 'devise-async'
gem 'settingslogic'

gem 'cells'

# 上传组件
gem 'carrierwave', '0.6.2'
gem 'mini_magick', :git => 'git://github.com/fschwahn/mini_magick.git'

# 队列
gem 'sidekiq'

# API
gem 'grape'
gem 'grape-entity'

# 分页
gem "will_paginate"

gem 'simple_form'
gem "anjlab-bootstrap-rails", :git => "git://github.com/anjlab/bootstrap-rails.git", :require => "bootstrap-rails"
gem "bootstrap-will_paginate", '0.0.3'
gem "bootstrap_helper", '1.4.1'
# gem "airbrake"


group :development do
  gem 'sqlite3'
  
  # 关掉assets pipeline日志
  gem 'quiet_assets'
  
  gem 'thin'
end

group :production do
  gem 'pg'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  
  # gem 'bootstrap-sass'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'

# To use debugger
# gem 'debugger'
