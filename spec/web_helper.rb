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

def sign_up
  visit('/signup')
  fill_in('email', with: 'johnsmith@aol.com')
  fill_in('password', with: 'password123')
  fill_in('confirm', with: 'password123')
  click_on('Sign up')
end

def sign_up_incorrect
  visit('/signup')
  fill_in('email', with: 'johnsmith@aol.com')
  fill_in('password', with: 'password123')
  fill_in('confirm', with: 'psasword123')
  click_on('Sign up')
end
