require 'pg'

def setup!
   p "Setting up test database..."
   connection = PG.connect(dbname: 'bookmark_manager_test')
   # Clear the bookmarks notable
   connection.exec("TRUNCATE bookmarks;")
 end 
