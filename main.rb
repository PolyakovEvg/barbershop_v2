require 'sinatra'
require 'rubygems'
require 'sinatra/reloader'
require 'sqlite3'
require 'sinatra/activerecord'

set :database, "sqlite3:barbershop.db"
class Client < ActiveRecord::Base

end


get '/' do
    erb :index
end