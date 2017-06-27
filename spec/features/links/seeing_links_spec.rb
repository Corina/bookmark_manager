feature 'ability to see bookmark links' do
  scenario 'user visits home page' do
    Link.create(url: 'http://www.makersacademy.com', title: 'Linky')
    visit('/links')
    expect(page).to have_content("Linky")
  end
end
