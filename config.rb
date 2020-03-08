require 'bundler'
Bundler.require

# Enable the collector extension, used to create
# try_ruby_<language>.json  files
require 'collector'
activate :collector

set :markdown_engine, :redcarpet

set :markdown, :layout_engine => :haml,
               :fenced_code_blocks => true,
               :lax_html_blocks => true,
               :smartypants => true

# Prevent code blocks indentation problem
set :haml, { ugly: true }

activate :syntax
activate :sprockets

activate :blog do |blog|
  blog.publish_future_dated = true
  blog.prefix    = "articles"
  blog.permalink = "{title}.html"
end

activate :directory_indexes

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'

after_configuration do
  Opal.paths.each do |p|
    sprockets.append_path p
  end
end

configure :development do
  system "clear"
  set :debug_assets, true
  activate :livereload
end

activate :relative_assets
set :relative_links, true

configure :build do
  activate :minify_css
  activate :minify_javascript
end

Haml::TempleEngine.disable_option_validator!
