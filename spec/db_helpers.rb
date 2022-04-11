require 'pg'

def truncate_database 
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("TRUNCATE TABLE bookmarks;")
end

def add_test_bookmarks
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com'), ('http://www.destroyallsoftware.com'), ('http://www.makersacademy.com');")
end
