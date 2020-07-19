require "bundler/setup"
require "KaraokeHellYeah"

KaraokeHellYeah::CLI.new.call

module KaraokeHellYeah
  class Error < StandardError; end
  # Your code goes here...
end
