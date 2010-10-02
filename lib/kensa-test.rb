require 'rubygems'
require "bundler"
Bundler.setup
require 'sinatra'
require 'json'

use Rack::Auth::Basic do |username, password|
  username == 'heroku' && password == 'b1EWrHYXE1R5J71D'
end

post '/heroku/resources' do
  { :id => 1, "KP_HOME_PAGE" => "http://google.com" }.to_json
end

delete '/heroku/resources/:id' do
  "ok"
end