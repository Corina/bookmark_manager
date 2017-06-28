feature 'adding tag' do
  scenario 'adding a single tag to a link' do
    visit '/links/new'
    fill_in 'url', with: 'https://www.google.com/'
    fill_in 'title', with: 'Google'
    fill_in 'tags', with: 'search engine'
    click_on 'Submit'
    
    link = Link.first
    expect(link.tags.map(&:name)).to include 'search engine'
  end
end
