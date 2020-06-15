require 'sinatra/base'

class App < Sinatra::Base
    get '/newteam' do
        erb :newteam
    end

    post '/team' do
        team_name = params['name']
        coach = params['coach']
        pg = params['pg']
        sg = params['sg']
        pf = params['pf']
        sf = params['sf']
        c = params['center']
        @team_hash = params
        erb :team
    end

end
