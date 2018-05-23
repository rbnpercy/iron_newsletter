require 'rbconfig'
# ruby 1.8.7 doesn't define RUBY_ENGINE
ruby_engine = defined?(RUBY_ENGINE) ? RUBY_ENGINE : 'ruby'
ruby_version = RbConfig::CONFIG["ruby_version"]
path = File.expand_path('..', __FILE__)
$:.unshift "#{path}/"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/crass-1.0.4/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/multipart-post-2.0.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/faraday-0.15.2/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/faraday_middleware-0.12.2/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/mini_portile2-2.3.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/extensions/x86_64-linux/2.4.0/nokogiri-1.8.2"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/nokogiri-1.8.2/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/loofah-2.2.2/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/sax-machine-1.3.2/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/feedjira-2.1.4/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/multi_xml-0.6.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/httparty-0.16.2/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/net-http-persistent-2.9.4/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/netrc-0.11.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/rest-3.0.8/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/iron_core-1.0.12/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/extensions/x86_64-linux/2.4.0/json-1.8.6"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/json-1.8.6/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/iron_worker-3.4.1/lib"
