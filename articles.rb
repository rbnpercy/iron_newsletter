require_relative 'bundle/bundler/setup'
require 'iron_worker'
require 'feedjira'


puts "Hello #{IronWorker.payload['name']}!"


class Feedjira::Parser::RSSEntry
  element :link
end

url = "https://news.ycombinator.com/rss"
feed = Feedjira::Feed.fetch_and_parse url

feed.entries.each do |item|
  puts "Item:  #{item.title}"
  puts "Link:  #{item.url}"
end
