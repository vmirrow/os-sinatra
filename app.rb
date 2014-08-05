require 'sinatra'

get '/' do
  "the time where this server lives is #{Time.now}
    <br /><br />check out your <a href=\"/agent\">user_agent</a> 
    <br /><br />
    Hostname: #{Socket.gethostname} <br />
    IP info: #{Socket::getaddrinfo(Socket.gethostname,"echo",Socket::AF_INET)}"
end

get '/agent' do
  "you're using #{request.user_agent}"
end