# Asset locations
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :build_dir, 'www'

# Development
configure :development do
  Slim::Engine.default_options[:pretty] = true
  activate :livereload
end

# Add bower to sprockets lookup path
after_configuration do
  sprockets.append_path File.join "#{root}", "bower_components"
end

# Build settings
configure :build do
  activate :relative_assets
  #activate :directory_indexes
  activate :asset_hash
  #activate :neat

  activate :minify_css
  activate :minify_javascript
  activate :gzip
 
  # Change to your Google Analytics key (e.g. UA-XXXXX-Y)
  # To disable GA, leave unset or set to nil
  set :ga_key, nil

end

activate :deploy do |deploy|
  deploy.method = :git
end