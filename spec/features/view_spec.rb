require_relative '../../app.rb'

feature 'View Bookmarks' do
  scenario 'User can see Hello World' do
    visit('/')
    expect(page).to have_content("Bookmark Manager")
  end
end