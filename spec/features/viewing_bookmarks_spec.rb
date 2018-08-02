feature "view bookmarks" do
  scenario 'A user can see their bookmarks' do

    connection = PG.connect(dbname: 'bookmark_manager_test')
    
    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.google.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.facebook.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.evieanddaniel.com');")

    visit('/bookmarks')

    expect(page).to have_content 'http://www.google.com'
    expect(page).to have_content 'http://www.facebook.com'
    expect(page).to have_content 'http://www.evieanddaniel.com'
  end
end
