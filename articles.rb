require_relative 'bundle/bundler/setup'
require 'iron_worker'
require 'feedjira'
require 'mailgun'


def email_body

  url = "https://news.ycombinator.com/rss"
  feed = Feedjira::Feed.fetch_and_parse url

  arts = feed.entries.each do |item|
    puts "Item:  #{item.title}"
    puts "&& Link:  #{item.url}"
  end

  return arts.inspect

end

def send_email
  mg_client = Mailgun::Client.new("API_KEY_HERE")

  message_params =  {
                     from: 'robin@percy.pw',
                     to:   IronWorker.payload['email'],
                     subject: 'Your daily developer articles!',
                     text: email_body()
                    }

  result = mg_client.send_message('MY_SANDBOX.mailgun.org', message_params).to_h!

  message_id = result['id']
  message = result['message']
end

send_email()
