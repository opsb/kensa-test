require 'rubygems'
require 'sinatra'
require 'json'

use Rack::Auth::Basic do |username, password|
  username == 'heroku' && password == 'b1EWrHYXE1R5J71D'
end

post '/heroku/resources' do
  { :id => 1 }.to_json
end

delete '/heroku/resources/:id' do
  "ok"
end