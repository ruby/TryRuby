require 'bundler'
Bundler.require

# Build Opal part with Tilt, with our customized pipeline
require 'opal-config'

set :rb, builder: OpalBuilder.new

# Enable the collector extension, used to create
# try_ruby_<language>.json  files
require 'collector'
activate :collector

set :markdown_engine, :redcarpet

set :markdown,
    fenced_code_blocks: true,
    lax_html_blocks: true,
    smartypants: true

activate :syntax

activate :blog do |blog|
  blog.publish_future_dated = true
  blog.prefix    = "articles"
  blog.permalink = "{title}.html"
end

activate :directory_indexes

set :build_dir, '_site' # for GitHub Pages
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'

configure :development do
  set :debug_assets, true
  activate :livereload
end

activate :relative_assets
set :relative_links, true

activate :minify_css

configure :build do
  activate :minify_javascript,
           compressor: -> { Terser.new }
end
