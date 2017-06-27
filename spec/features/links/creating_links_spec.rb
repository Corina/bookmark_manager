
feature 'ability to add a link' do
  scenario 'user adds a link' do
    visit('/links/new')
    fill_in('title', :with => 'Google' )
    fill_in('url', :with => 'https://www.google.com/' )
    click_on('Submit')
    expect(Link.last.url).to eq 'https://www.google.com/'
  end
end
