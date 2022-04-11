require 'bookmarks.rb'

describe Bookmark do
  describe '.all' do
  it 'lists all bookmarks' do
    bookmark = Bookmark.all
    expect(bookmark).to eq ["https://www.google.com/"]
  end
end