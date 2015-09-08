require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require 'omniauth-github'

Dir['app/**/*.rb'].each { |file| require_relative file }
set :environment, :development

get '/' do
end
