require 'rubygems'
require 'rest-client'

puts `env | sort`

puts "hmm"
response = RestClient.get ENV['KP_HOME_PAGE']
abort "Error receiving page" unless (response.code == 200)