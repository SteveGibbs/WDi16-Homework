require 'sqlite3'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "testing one two three"
erb :home

end

get '/pry' do
  binding.pry
  "Pry route"

end




get '/mountains' do
  db = SQLite3::Database.new("database.db")
  db.results_as_hash = true
  @all_mountains = db.execute "SELECT * FROM mountains;"
  erb :mountains_index
end

get '/mountains/new' do
  erb :mountains_new
end


post '/mountains' do
  db = SQLite3::Database.new("database.db")
  db.results_as_hash = true


  sql = "INSERT INTO mountains (mountain_name, country, height) VALUES ('#{params[:mountain_name]}', '#{params[:country]}', '#{params[:height]}');"


  mountain = db.execute sql
  db.close
  redirect "/mountains"


end


get '/mountains/:id/edit' do
  db = SQLite3::Database.new("database.db")
  db.results_as_hash = true
  @mountain = db.execute( "SELECT * FROM mountains WHERE id == #{params[:id]}").first
  db.close

  erb :mountains_edit
end

post '/mountains/:id' do

  sql = "UPDATE mountains SET species = '#{params[:mountain_name]}', image = '#{params[:country]}', description = '#{params[:height]}' WHERE id == #{params[:id]};"

  db = SQLite3::Database.new("database.db")
  db.results_as_hash = true

  db.execute sql
  db.close
  redirect "/mountains/#{params[:id]}"

end

get '/mountains/:id/delete' do
  db = SQLite3::Database.new("database.db")
  db.results_as_hash = true

  db.execute "DELETE FROM mountains WHERE id == #{params[:id]};"
  db.close
  redirect "/mountains/"

end

get '/mountains/:id' do
  db = SQLite3::Database.new("database.db")
  db.results_as_hash = true
  @animal = db.execute( "SELECT * FROM mountains WHERE id == #{params[:id]}").first
  db.close
  erb :mountains_show
end
