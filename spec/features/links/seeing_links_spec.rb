feature 'ability to see  links' do
  
  before (:each) do
    Link.create(title: 'wiki ice', url: 'https://en.wikipedia.org/wiki/Ice', tags: [Tag.first_or_create(name: 'types of ice')])
    Link.create(title: 'vonnegut', url: 'https://www.vonnegut.com/', tags: [Tag.first_or_create(name: 'author')])
    Link.create(title: 'tate', url: 'http://www.tate.org.uk/visit/tate-modern', tags: [Tag.first_or_create(name: 'museum')])
    Link.create(title: 'Bubbledcat', url: 'https://www.bubbledogs.co.uk/', tags: [Tag.first_or_create(name: 'bubbledogs')])
  end
  
  scenario 'user visits home page' do
    visit('/links')
    expect(page).to have_content("wiki ice")
  end
  
  scenario 'can filter by tags' do
    visit 'tags/bubbledogs'
    
    expect(page.status_code).to eq(200)
    within 'ul#links' do
      expect(page).not_to have_content('wiki ice')
      expect(page).not_to have_content('vonnegut')
      expect(page).not_to have_content('tate')
      expect(page).to have_content('Bubbledcat')
    end
  end
end
