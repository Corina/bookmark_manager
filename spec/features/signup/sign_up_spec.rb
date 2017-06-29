feature 'user signing up' do
  scenario 'user regsters account' do
    users = User.all
    expect { sign_up }.to change {users.count}.by 1
  end

  scenario 'user lands on links page' do
    sign_up
    expect(page).to have_content('Welcome, johnsmith@aol.com')
  end
end
