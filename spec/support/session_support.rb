

def given_a_user_is_logged_in
  @user ||= FactoryGirl.create :user
  login_as @user
end

def login_as(user)
  visit '/login'
  within "#content" do
    fill_in "Email", with: user.email
    fill_in 'Password', with: 'secret'
    click_on "Log In"
  end
end
