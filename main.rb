require 'sinatra'
require 'rubygems'
require 'sinatra/reloader'
require 'sqlite3'

get '/' do
    erb :index
end