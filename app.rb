require 'sinatra'
require 'sinatra/activerecord'

Dir['app/**/*.rb'].each { |file| require_relative file }
set :views, 'app/views'
set :environment, :development

get '/' do
  launchers = Launcher.all
  erb :'launchers/index', locals: { launchers: launchers }
end

get '/launchers/:id' do
  launcher = Launcher.find(params[:id])
  erb :'launchers/show', locals: { launcher: launcher }
end

post '/launchers/:id/ratings' do
  launcher = Launcher.find(params[:id])
  rating = Rating.new(params[:rating])
  rating.launcher_id = params[:id].to_i
  rating.save
  redirect "/launchers/#{launcher.id}"
end
