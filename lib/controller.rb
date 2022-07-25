require 'gossip'
class ApplicationController < Sinatra::Base

# permet l'affichage de l'index des potins
  get '/' do
    erb :index, locals: {gossips: Gossip.all}
  end

# permet l'affichage du potin en fonction de l'id
  get '/gossips/:id' do
    erb :show, locals: {gossip: Gossip.find(params['id'])}
  end

# permet l'affichage de la page de création de potin
  get '/gossips/new/' do
    erb :new_gossip
  end

# permet l'envoi du potin créé
  post '/gossips/new/' do
    Gossip.new(params["gossip_author"], params["gossip_content"], params["gossip_comment"]).save
    redirect '/'
  end

# permet l'affichage de la page de modification de potin
  get '/gossips/:id/edit' do
    id = params['id']
    erb :edit , locals: {gossip: Gossip.find(id)}
  end

# permet l'envoi de la modification du potin
  post '/gossips/:id/edit/' do
  Gossip.update(params["id"], params["updated_author"], params["updated_content"], params["updated_comment"])
  redirect "/gossips/#{params['id']}"
  end
end
