require 'sinatra/base'
require './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  get '/bookmarks' do
# Print the ENV variable
p ENV

    @bookmarks = Bookmark.all
  erb(:index)
 end

  run! if app_file == $0
end
