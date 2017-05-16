require 'bundler'
Bundler.require

require "middleman-gh-pages"

# Ensure builds are skipped when publishing to the gh-pages branch
ENV["COMMIT_MESSAGE_SUFFIX"] = "[skip ci]"
# Ignore errors about dirty builds (not recommended)
ENV["ALLOW_DIRTY"] = "true"
