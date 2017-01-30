# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w(ckeditor/config.js)
Rails.application.config.assets.precompile += %w( popcorn-complete.js )
Rails.application.config.assets.precompile += %w( information.css )
Rails.application.config.assets.precompile += %w( about.css )
Rails.application.config.assets.precompile += %w( about.js )
