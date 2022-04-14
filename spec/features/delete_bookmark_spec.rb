feature "Deleting Bookmarks" do
  scenario "User can delete bookmarks, and they are no longer visible" do
    visit('/bookmarks')
    click_button 'Delete Google?'
    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Google', href: "http://www.google.com")
  end
end
