def adding_single_tag
  visit '/links/new'
  fill_in 'url', with: 'https://www.google.com/'
  fill_in 'title', with: 'Google'
  fill_in 'tags', with: 'search'
  click_on 'Submit'
end


def adding_two_tags
  visit '/links/new'
  fill_in 'url', with: 'https://www.google.com/'
  fill_in 'title', with: 'Google'
  fill_in 'tags', with: 'search engine, news'
  click_on 'Submit'
end
