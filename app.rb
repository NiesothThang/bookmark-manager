require "./lib/bookmark"
require "sinatra/base"
require "sinatra/reloader"

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    "Hello World"
  end

  get "/bookmarks" do
    p ENV
    @bookmarks = Bookmarks.all
    erb :'bookmarks/index'
  end

  run! if app_file == $0
end
