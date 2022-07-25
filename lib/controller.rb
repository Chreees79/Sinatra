require 'gossip'
class ApplicationController < Sinatra::Base

  get '/' do
    erb :index, locals: {gossips: Gossip.all}
  end

  get '/gossips/:id' do
    erb :show, locals: {gossip: Gossip.find(params['id'])}
  end

  get '/gossips/new/' do
    erb :new_gossip
  end

  post '/gossips/new/' do
    Gossip.new(params["gossip_author"], params["gossip_content"], params["gossip_comment"]).save
    redirect "/"

  end

  get '/gossips/:id/edit' do
    id = params['id']
    erb :edit , locals: {gossip: Gossip.find(id)}
  end

  post '/gossips/:id/edit/' do
  Gossip.update(params["id"], params["updated_author"], params["updated_content"], params["updated_comment"])
  redirect "/gossips/#{params['id']}"
  end
end
