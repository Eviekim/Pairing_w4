require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get '/bookmarks' do
    @bookmarks = [
    'http://www.google.com',
    'http://www.facebook.com',
    'http://www.evieanddaniel.com'
  ]
  erb(:index)

  end

  run! if app_file == $0
end
