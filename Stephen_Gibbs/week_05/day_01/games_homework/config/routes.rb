Rails.application.routes.draw do
  get '/home' => 'games#home'
  get '/magic8ball' => 'games#magic8ball'
  get '/rockpaperscissors' => 'games#rockpaperscissors'
  get '/secretnumber' => 'games#secretnumber'
  get '/rockpaperscissorsplay' => 'games#rockpaperscissorsplay'

end
