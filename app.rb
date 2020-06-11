require 'sinatra'
require 'json'

user = {}



get '/' do
    'Hello Sim'
end

post '/remove' do
    status 204

    request.body.rewind

    request_payload = JSON.parse(request.body.read)

    File.open("remove.txt", "a") do |f|
        f.puts(request_payload)
        user = request_payload
    end
end

user_email = ["object"]["user"]["email"]
