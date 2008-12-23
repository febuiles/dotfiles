load File.dirname(__FILE__) + '/.railsrc' if $0 == 'irb' && ENV['RAILS_ENV'] 

require 'rubygems'
require 'wirble'
require 'pp'
Wirble.init
Wirble.colorize