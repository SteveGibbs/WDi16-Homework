require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

get '/' do
erb( :home )
end


get '/contact' do
erb(:contact)
end

get '/users' do
  "This should show all of the users"
  erb(:users)
end

get '/result' do
  @movie_title = params[:movie_title]
  @director = params[:director]
  @result = HTTParty.get("http://www.omdbapi.com/?t=#{@movie_title}")

  @result0 = @result["Title"]
  @result2 = @result["Director"]
  @result3 = @result["Actors"]
  @result1 = @result["Poster"]


  erb(:result)
end
