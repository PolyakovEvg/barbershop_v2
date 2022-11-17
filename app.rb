require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'


set :database, {adapter:"sqlite3", database:"barbershop.db"}

class Client < ActiveRecord::Base

end

class Barber < ActiveRecord::Base
end

before do
    @barbers = Barber.order "created_at DESC"
end
get '/' do
    erb :index
end

get '/about' do
    erb :about
end

get '/visit' do
    erb :visit
end

post '/visit' do
    @user_name = params[:user_name]
    @user_phone = params[:user_phone]
    @date = params[:user_visit_time]
    @master = params[:select]
    @color = params[:colorpicker]
    user = Client.create(:name => @username, :phone =>@user_phone, :datestamp => @date, :barber => @master, :color =>@color)
    erb :visit

end