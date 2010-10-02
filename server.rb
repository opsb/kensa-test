require 'rubygems'
require 'sinatra'
require 'json'

use Rack::Auth::Basic do |username, password|
  username == 'heroku' && password == 'b1EWrHYXE1R5J71D'
end

post '/heroku/resources' do
  vars = { :id => 1, "KP_HOME_PAGE" => "http://google.com" }.to_json
  puts vars.inspect
  vars
end

delete '/heroku/resources/:id' do
  "ok"
end