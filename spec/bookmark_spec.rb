require './lib/bookmark'
describe Bookmark do
  describe '.all' do
    it 'should show all the bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.google.com');")
      connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.facebook.com');")
      connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.evieanddaniel.com');")

      bookmarks = Bookmark.all
      expect(bookmarks).to include("http://www.google.com")
      expect(bookmarks).to include("http://www.facebook.com")
      expect(bookmarks).to include("http://www.evieanddaniel.com")
    end
  end
end
