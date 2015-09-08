require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require 'omniauth-github'

Dir['app/**/*.rb'].each { |file| require_relative file }
set :views, 'app/views'
set :environment, :development

get '/' do
  redirect "/launchers"
end

get '/launchers' do
  launchers = Launcher.all
  erb :'launchers/index', locals: { launchers: launchers }
end
