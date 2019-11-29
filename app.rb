# Controller for the web app. Each page is controlled by it's own GET / POST
# block below

require 'sinatra/base'
require './db/database_connection.rb'
require './db/access_database.rb'
require './lib/model.rb'

class ControllerClass < Sinatra::Base

  DatabaseConnection.setup('my_database')

  enable :sessions  #Enables use of session[:hash] for storing data

  get '/' do
    erb :index
  end

  get '/show-db' do
    @database = AccessDatabase.get_all('my_table')
    @dataline = AccessDatabase.get_line('my_table', 1)
    erb :show_db
  end

  run! if app_file == $0

end
