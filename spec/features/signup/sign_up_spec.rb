feature 'user signing up' do
  scenario 'user regsters account' do
    users = User.all
    expect { sign_up }.to change {users.count}.by 1
  end
  
  scenario 'user lands on links page' do
    sign_up
    expect(page).to have_content('Welcome, johnsmith@aol.com')
  end
  
  scenario 'user mistypes password confirmation' do
    users = User.all
    sign_up_incorrect
    expect(users.count).to be 0
  end
  
  scenario 'user mistypes password and stays on the same page' do
    sign_up_incorrect
    expect(page.current_path).to eq '/signup'
    expect(page).to have_content "Password and confirmation password do not match"
    
  end
  
end
