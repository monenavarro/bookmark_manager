require 'sinatra/base'
require 'sinatra/reloader'
require 'pg'
require_relative './lib/bookmarks'

class Bookmark_Manager < Sinatra::Base
  enable :method_override

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :"bookmarks/index"
  end

  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end

  post '/bookmarks' do
    Bookmark.create(params[:title], params[:url])
    redirect '/bookmarks'
  end

  post '/bookmarks/delete' do
    redirect '/bookmarks'
  end

  run! if app_file == $0

end