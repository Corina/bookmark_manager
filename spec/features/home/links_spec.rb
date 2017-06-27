

feature 'ability to see boomark links' do
  scenario 'user visits home page' do
    Link.create(url: 'http://www.makersacademy.com', title: 'Linky')
    visit('/')
    expect(page).to have_content("Linky")
  end
end
