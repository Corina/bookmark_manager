feature 'adding tag' do
  scenario 'adding a single tag to a link' do
    adding_single_tag
    
    link = Link.first
    expect(link.tags.map(&:name)).to include 'search'
  end
  
  scenario 'adding two tags' do
    adding_two_tags
    link = Link.first
    expect(link.tags.map(&:name)).to include('search engine').and include('news')
  end
  
  
end
