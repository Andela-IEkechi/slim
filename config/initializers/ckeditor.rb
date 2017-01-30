# Use this hook to configure ckeditor
Ckeditor.setup do |config|
  config.assets_languages = ['en', 'fr']
  config.assets_plugins = ['image', 'smiley']
  require 'ckeditor/orm/active_record'
  config.cdn_url = "//cdn.ckeditor.com/4.6.1/basic/ckeditor.js"
end
