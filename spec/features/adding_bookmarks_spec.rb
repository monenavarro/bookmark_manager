feature 'Add a new bookmark' do
  scenario 'A user can add a new bookmark to Bookmark Manager' do
    visit('bookmarks/new')
    fill_in('title', with: 'Instagram')
    fill_in('url', with: 'http://www.instagram.com')
    click_button('Submit')
    expect(page).to have_content 'Instagram'
  end
end