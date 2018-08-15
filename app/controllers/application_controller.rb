













require_relative '../config/environment'

class App < Sinatra::Base

fortunes = ["eating shellfish", "making code that doesn't work"]
  get '/' do
    erb :fortune
  end
  
  post '/tell_fortune' do
    "Oh my dear #{params[:name]}.Unfortunatelyl, you, like all #{params[:sign]} are destined to a fate of #{fortunes.sample}"
  end 
  
end
