require 'pg'

def truncate_database 
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("TRUNCATE TABLE bookmarks;")
end

def add_test_bookmarks
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.google.com', 'Google'), ('http://www.destroyallsoftware.com', 'Destroy All Software'), ('http://www.makersacademy.com', 'Makers');")
end
