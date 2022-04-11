require_relative '../../app.rb'

feature 'Homepage' do
  scenario 'User can see Bookmark Manager' do
    visit('/')
    expect(page).to have_content("Bookmark Manager")
  end
end

feature 'View bookmarks' do
  scenario 'User can see bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "http://www.google.com/"
  end
end