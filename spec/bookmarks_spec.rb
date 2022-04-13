require 'bookmarks.rb'

truncate_database

describe Bookmark do
  describe '.all' do
    it 'lists all bookmarks' do
      add_test_bookmarks
      bookmarks = Bookmark.all
      expect(bookmarks).to include({title: "Google",url: "http://www.google.com"})
    end                           
  end
end